abstract interface class PushNotificationsRepository {
  Future<void> sendToken();
  Future<void> removeToken();
}
