import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

class HistoryPage extends ConsumerWidget {
  static Widget withKey() {
    return HistoryPage(
      key: Key(const Uuid().v4()),
    );
  }

  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      key: key,
      appBar: AppBar(
        title: const Text("履歴"),
        centerTitle: true,
      ),
      backgroundColor: ThemeData.dark().primaryColor,
      body: Container(),
    );
  }
}
