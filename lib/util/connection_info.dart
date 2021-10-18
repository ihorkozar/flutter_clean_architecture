import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class ConnectionInfo {
  Future<bool> get isConnected;
}

class ConnectionInfoImp implements ConnectionInfo {
  final InternetConnectionChecker connectionChecker;

  ConnectionInfoImp(this.connectionChecker);

  @override
  Future<bool> get isConnected => connectionChecker.hasConnection;

}