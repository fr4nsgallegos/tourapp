import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showWelcome = true;

  Future _saveValue(bool valor) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool('variable', valor);
  }

  Future _getValue() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    showWelcome = preferences.getBool('variable') ?? true;
    print("valor prefs");
    print(preferences.getBool('variable'));
    print("variable showwelcome");
    print(showWelcome);
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getValue();
    // showWelcome = false;
  }

  // Future isFirstTime() async {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                showWelcome.toString(),
                style: TextStyle(fontSize: 50),
              ),
              ElevatedButton(
                onPressed: () {
                  _saveValue(false);
                  showWelcome = false;

                  setState(() {});
                },
                child: Text("PRESIONA"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
