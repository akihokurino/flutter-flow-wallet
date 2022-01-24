import 'package:flutter_riverpod/flutter_riverpod.dart';

class _Provider extends StateNotifier<_State> {
  _Provider() : super(_State.init());
}

class _State {
  static _State init() {
    return _State();
  }

  _State();
}

final rootProvider = StateNotifierProvider<_Provider, _State>((ref) {
  return _Provider();
});
