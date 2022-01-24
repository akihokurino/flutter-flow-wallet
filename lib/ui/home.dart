import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_flow_wallet/component/dialog.dart';
import 'package:flutter_flow_wallet/provider/home.dart';
import 'package:flutter_hud/flutter_hud.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:uuid/uuid.dart';

class HomePage extends ConsumerStatefulWidget {
  static Widget withKey() {
    return HomePage(
      key: Key(const Uuid().v4()),
    );
  }

  @override
  _HomePageState createState() => _HomePageState();

  const HomePage({Key? key}) : super(key: key);
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  void initState() {
    super.initState();

    final action = ref.read(homeProvider.notifier);

    Future.wait([action.init()]).then((err) {
      final errors = err.where((element) => element != null).toList();
      if (errors.isNotEmpty) {
        AppDialog().showErrorAlert(context, errors.first!);
        return;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(homeProvider);
    final action = ref.read(homeProvider.notifier);

    final addressView = Container(
      padding: const EdgeInsets.all(0),
      margin: const EdgeInsets.fromLTRB(10, 20, 10, 0),
      child: InkWell(
        child: Text(
          "アドレス: \n${state.address}",
          style: const TextStyle(fontSize: 14),
        ),
        onTap: () async {
          if (state.address.isEmpty) {
            return;
          }

          final data = ClipboardData(text: state.address);
          await Clipboard.setData(data);

          Fluttertoast.showToast(
              msg: "コピーしました",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: ThemeData().primaryColor,
              textColor: Colors.white,
              fontSize: 16.0);
        },
      ),
    ); //

    final balanceView = Container(
      width: double.infinity,
      height: 100.0,
      margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
      child: Card(
        color: Colors.green,
        child: Center(
          child: Text(
            "${state.balance} Flow",
            style: const TextStyle(fontSize: 20),
          ),
        ),
      ),
    );

    return Scaffold(
      key: widget.key,
      appBar: AppBar(
        title: const Text("ホーム"),
        centerTitle: true,
      ),
      body: WidgetHUD(
          builder: (context) => RefreshIndicator(
                child: ListView(
                  children: [addressView, balanceView],
                ),
                onRefresh: () async {
                  final err = await action.refresh();
                  if (err != null) {
                    AppDialog().showErrorAlert(context, err);
                    return;
                  }
                },
              ),
          showHUD: state.shouldShowHUD),
    ); // Hello world
  }
}
