import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flow_wallet/component/tabbar.dart';
import 'package:flutter_flow_wallet/provider/root.dart';
import 'package:flutter_flow_wallet/ui/history.dart';
import 'package:flutter_flow_wallet/ui/home.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:uuid/uuid.dart';

class RootPage extends ConsumerWidget {
  static Widget withKey() {
    return RootPage(
      key: Key(const Uuid().v4()),
    );
  }

  RootPage({Key? key}) : super(key: key);

  final PersistentTabController _tabController =
      PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(rootProvider);
    final action = ref.read(rootProvider.notifier);

    _tabController.index = state.tabIndex;

    return PersistentTabView.custom(
      context,
      controller: _tabController,
      screens: [
        HomePage.withKey(),
        HistoryPage.withKey(),
      ],
      itemCount: 2,
      customWidget: CustomTabBar(
        items: [
          PersistentBottomNavBarItem(
            icon: const Icon(Icons.account_balance_wallet),
            title: "ホーム",
            activeColorPrimary: ThemeData().primaryColor,
            inactiveColorPrimary: CupertinoColors.systemGrey,
          ),
          PersistentBottomNavBarItem(
            icon: const Icon(Icons.history),
            title: "履歴",
            activeColorPrimary: ThemeData().primaryColor,
            inactiveColorPrimary: CupertinoColors.systemGrey,
          ),
        ],
        selectedIndex: _tabController.index,
        onItemSelected: (index) {
          action.changeTabIndex(index);
        },
      ),
      confineInSafeArea: true,
      backgroundColor: ThemeData.dark().backgroundColor,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      screenTransitionAnimation:
          const ScreenTransitionAnimation(animateTabTransition: false),
    );
  }
}
