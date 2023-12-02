import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showWelcome = true;
  int num = 0;

  Future _saveValue(int valor) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setInt('ovejitas', valor);
  }

  Future _getValue() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    num = preferences.getInt('ovejitas') ?? 0;
    // showWelcome = preferences.getBool('showWel') ?? true;
    print("valor OVEJITAS");
    print(preferences.getInt('ovejitas'));
    print("variable NUM");
    print(num);
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getValue();
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
                num.toString(),
                style: TextStyle(fontSize: 50),
              ),
              ElevatedButton(
                onPressed: () {
                  num++;
                  _saveValue(num);
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
