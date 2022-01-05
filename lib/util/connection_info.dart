import 'package:universal_internet_checker/universal_internet_checker.dart';

abstract class ConnectionInfo {
  Future<bool> get isConnected;
}

class ConnectionInfoImp implements ConnectionInfo {

  @override
  Future<bool> get isConnected async{
    final checkInternet = await UniversalInternetChecker.checkInternet();
    return checkInternet == ConnectionStatus.online;
  }
}
