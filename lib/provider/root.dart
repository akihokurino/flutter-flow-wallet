import 'package:flutter_riverpod/flutter_riverpod.dart';

class _Provider extends StateNotifier<_State> {
  _Provider() : super(_State.init());

  void changeTabIndex(int index) {
    state = state.setTabIndex(index);
  }
}

class _State {
  final int tabIndex;

  static _State init() {
    return _State(tabIndex: 0);
  }

  _State({required this.tabIndex});

  _State setTabIndex(int index) {
    return _State(tabIndex: index);
  }
}

final rootProvider = StateNotifierProvider<_Provider, _State>((ref) {
  return _Provider();
});
