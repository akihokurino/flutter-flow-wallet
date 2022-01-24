// @dart=2.9

import 'package:elliptic/elliptic.dart';
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
      "0bb993fd6e558794d373ad9c629b9a7a176ae0d437e9b227103af34d95454e70";

  const code = '''
transaction{
  prepare(signer: AuthAccount){
    log("Done!");
  }
}
  ''';

  await flowCli.sendTransaction(
      address: defaultAddress, privateKey: defaultPrivateKey, code: code);

  var ec = getP256();
  var nextPrivateKey = ec.generatePrivateKey();
  var pub = nextPrivateKey.publicKey;

  // await flowCli.createAccount(
  //     address: defaultAddress,
  //     privateKey: defaultPrivateKey,
  //     newPrivateKey: nextPrivateKey);
}
