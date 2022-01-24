import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

class HomePage extends ConsumerWidget {
  static Widget withKey() {
    return HomePage(
      key: Key(const Uuid().v4()),
    );
  }

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      key: key,
      appBar: AppBar(
        title: const Text("ホーム"),
        centerTitle: true,
      ),
      backgroundColor: ThemeData.dark().primaryColor,
      body: Container(),
    );
  }
}
