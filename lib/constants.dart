import 'package:flutter/material.dart';

const kAppTitleNL = 'Vertaal Demo';
const kAppTitleEN = 'Translate Demo';

const kAppBackGroundColor = Color(0xffaed4ef);
const kAppBarColor = Color(0xff243975);
const kAppContainer = Color(0xff007bc7);

const kAppMargin = EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0);
const kAppPadding = EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0);

const kStyledContainerTextStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.w700,
  fontSize: 20.0,
);

const kBoxShadow = [
  BoxShadow(color: Colors.blueGrey, offset: Offset(7.0, 5.0), blurRadius: 3.0)
];

const kVeryLongStringNL =
    'Dit is een onnodig lang stuk tekst. De bedoeling is dat het laat zien dat u deze tekst ergens anders kunt opslaan, zodat uw tweede schermbestand niet met zeer lange tekenreeksen wordt gevuld. De volgende container bevat informatie over hot reload.';
const kVeryLongStringEN =
    'This is an unnecessarily long piece of text. The intention is that it shows that you can save this text somewhere else, so that your second screen file is not filled with very long strings. The following container contains information about hot reload.';
const kHotReloadStringNL =
    'Flutter\'s hot reload-functie helpt je snel en gemakkelijk te experimenteren, gebruikersinterface te bouwen, functies toe te voegen en bugs te repareren. Hot reload werkt door bijgewerkte broncodebestanden in de actieve Dart Virtual Machine (VM) te injecteren. Nadat de VM klassen heeft bijgewerkt met de nieuwe versies van velden en functies, bouwt het Flutter-framework automatisch de widgetstructuur opnieuw op, zodat u snel de effecten van uw wijzigingen kunt bekijken.';
const kHotReloadStringEN =
    'Flutter’s hot reload feature helps you quickly and easily experiment, build UIs, add features, and fix bugs. Hot reload works by injecting updated source code files into the running Dart Virtual Machine (VM). After the VM updates classes with the new versions of fields and functions, the Flutter framework automatically rebuilds the widget tree, allowing you to quickly view the effects of your changes.';
