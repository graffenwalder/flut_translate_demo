import 'package:flutter/material.dart';
import 'package:bilingual_app/constants.dart';
import 'package:bilingual_app/styled_container.dart';
import 'second_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
        title: Text(_languageDutch ? kAppTitleNL : kAppTitleEN),
      ),
      body: ListView(
        children: <Widget>[
          StyledContainer(
            text: _languageDutch
                ? 'Deze app geeft een demo, hoe je shared preferences kan gebruiken om je app te vertalen.'
                : 'This app provides a demo of how you can use shared preferences to translate your app.',
          ),
          StyledContainer(
            text: _languageDutch
                ? 'Switch to English'
                : 'Schakel naar Nederlands',
            onTap: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              if (_languageDutch) {
                _languageDutch = false;
              } else {
                _languageDutch = true;
              }
              setState(() {
                prefs.setBool('languageDutch', _languageDutch);
              });
            },
          ),
          SizedBox(
            height: 50.0,
          ),
          StyledContainer(
            text: _languageDutch
                ? 'Ga naar tweede scherm'
                : 'Go to second Screen',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SecondScreen();
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
