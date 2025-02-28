import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

enum NetworkStatus { online, offline }

class ConnectivityCubit extends Cubit<NetworkStatus> {
  final Connectivity _connectivity;

  ConnectivityCubit({Connectivity? connectivity})
      : _connectivity = connectivity ?? Connectivity(),
        super(NetworkStatus.online) {
    _initialize();
    _connectivity.onConnectivityChanged.listen((result) {
      if (result == ConnectivityResult.none) {
        emit(NetworkStatus.offline);
      } else {
        emit(NetworkStatus.online);
      }
    });
  }

  void _initialize() async {
    final result = await _connectivity.checkConnectivity();
    if (result == ConnectivityResult.none) {
      emit(NetworkStatus.offline);
    } else {
      emit(NetworkStatus.online);
    }
  }
}
