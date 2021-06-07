import './mqtt.dart';

enum MQTTConnectionState { connected, disconnected, connecting }

class ConnectionController{
  MQTTConnectionState _appConnectionState = MQTTConnectionState.disconnected;
  String _prefix = 'Fred';
  MQTTController manager;
  String _broker;
  String _topic;
  bool _tryedConnection = false;
  void Function(String text) _onMensage;

  void initState() {
    startConnection();
  }

  ConnectionController({
    broker,
    topic,
    onMensage
  }){
    _broker = broker;
    _topic = topic;
    _onMensage = onMensage;
  }

  bool get tryedConnection => this._tryedConnection;

  startConnection() async{
    if(_broker != null && _topic != null && _appConnectionState == MQTTConnectionState.disconnected && !_tryedConnection)
      await configureAndConnect(_broker, _topic);
    _tryedConnection = true;
  }

  String get MQTTconnection{
    return _appConnectionState.toString().substring(20);
  }
  Future<void> configureAndConnect(String broker, String topic) async{
    manager = MQTTController(
      host: broker,
      topic: topic,
      identifier: _prefix,
      connected: (){
        _appConnectionState = MQTTConnectionState.connected;
      },
      connectingg:(){
        _appConnectionState = MQTTConnectionState.connecting;
      },
      disconnected:(){
        _appConnectionState = MQTTConnectionState.disconnected;
      },
      onMensage: _onMensage,
    );
    manager.initializeMQTTClient();
    await manager.connect();
  }

  void disconnect(){
    manager.disconnect();
  }

  void publishMessage(String text) {
    manager.publish(text);
  }
}