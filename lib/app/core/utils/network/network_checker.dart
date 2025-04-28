import 'package:connectivity_plus/connectivity_plus.dart';

class ONetworkChecker {
  static final Connectivity _connectivity = Connectivity();

  static Stream<bool> get connectivityStream async* {
    await for (final results in _connectivity.onConnectivityChanged) {
      // Since results is a List<ConnectivityResult>
      if (results.contains(ConnectivityResult.mobile) ||
          results.contains(ConnectivityResult.wifi) ||
          results.contains(ConnectivityResult.ethernet)) {
        yield true;
      } else {
        yield false;
      }
    }
  }
}
