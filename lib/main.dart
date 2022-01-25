// @dart=2.9

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_flow_wallet/flow/fcl.dart';
import 'package:flutter_flow_wallet/ui/root.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initializeDateFormatting("ja_JP");
  await dotenv.load(fileName: ".env");

  await _initWallet();

  final app = MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    home: RootPage.withKey(),
    builder: (context, child) {
      return MediaQuery(
        child: child,
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      );
    },
  );

  runApp(
    ProviderScope(
      child: app,
    ),
  );
}

Future<void> _initWallet() async {
  final flowCli = FlowClient.create(
      FlowClient.flowEmulatorEndpoint, FlowClient.flowEmulatorPort);

  const defaultAddress = "f8d6e0586b0a20c7";
  const defaultPrivateKey =
      "a0b6509054e06924fc1b9052676e7adbdda3f12fae20e8fa7f11d0bd162ab0d7";

  const code = '''
transaction{
  prepare(signer: AuthAccount){
    log("Done!");
  }
}
  ''';

  await flowCli.sendTransaction(
      address: defaultAddress, privateKey: defaultPrivateKey, code: code);

  // await flowCli.createAccount(
  //     address: defaultAddress, privateKey: defaultPrivateKey);
}
