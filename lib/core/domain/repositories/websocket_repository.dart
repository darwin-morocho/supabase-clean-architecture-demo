abstract class WebsocketRepository {
  Future<void> connect();
  Future<void> disconnect();
}
