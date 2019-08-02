import 'package:flutter/material.dart';
import 'package:bilingual_app/constants.dart';
import 'package:bilingual_app/styled_container.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  bool _languageDutch = true;

  _loadSharedData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _languageDutch = prefs.getBool('languageDutch') ?? true;
    });
  }

  @override
  void initState() {
    super.initState();
    _loadSharedData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_languageDutch ? 'Tweede Scherm' : 'Second Screen'),
      ),
      body: ListView(
        children: <Widget>[
          StyledContainer(
            text: _languageDutch ? kVeryLongStringNL : kVeryLongStringEN,
          ),
          StyledContainer(
            text: _languageDutch ? kHotReloadStringNL : kHotReloadStringEN,
          )
        ],
      ),
    );
  }
}
