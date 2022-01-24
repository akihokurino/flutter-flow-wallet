import 'package:flutter_flow_wallet/flow/fcl.dart';
import 'package:flutter_flow_wallet/provider/error.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class _Provider extends StateNotifier<_State> {
  _Provider() : super(_State.init());

  Future<AppError?> init() async {
    try {
      state = state.setShouldShowHUD(true);

      final flowCli = FlowClient.create(
          FlowClient.flowEmulatorEndpoint, FlowClient.flowEmulatorPort);

      const address = "f8d6e0586b0a20c7";
      final balance = await flowCli.getAccountBalance(address);
      state = state.setAddress(address);
      state = state.setBalance(balance);
    } catch (e) {
      return AppError("エラーが発生しました");
    } finally {
      state = state.setShouldShowHUD(false);
    }
  }

  Future<AppError?> refresh() async {
    try {
      final flowCli = FlowClient.create(
          FlowClient.flowEmulatorEndpoint, FlowClient.flowEmulatorPort);

      const address = "f8d6e0586b0a20c7";
      final balance = await flowCli.getAccountBalance(address);

      state = state.setBalance(balance);
    } catch (e) {
      return AppError("エラーが発生しました");
    }
  }
}

class _State {
  final bool shouldShowHUD;
  final String address;
  final String balance;

  _State(
      {required this.shouldShowHUD,
      required this.address,
      required this.balance});

  static _State init() {
    return _State(shouldShowHUD: false, address: "", balance: "");
  }

  _State setShouldShowHUD(bool should) {
    return _State(shouldShowHUD: should, address: address, balance: balance);
  }

  _State setAddress(String address) {
    return _State(
        shouldShowHUD: shouldShowHUD, address: address, balance: balance);
  }

  _State setBalance(String balance) {
    return _State(
        shouldShowHUD: shouldShowHUD, address: address, balance: balance);
  }
}

final homeProvider = StateNotifierProvider<_Provider, _State>((ref) {
  return _Provider();
});
