import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height - 200,
                width: MediaQuery.of(context).size.width - 50,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Image.asset("assets/icons/avion.png", height: 150),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Viaja con los mejor",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    Divider(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Text(
                          "Phasellus sed augue vitae ex facilisis volutpat. Nullam eleifend augue lorem, in molestie leo consectetur sed. Praesent nec enim at sem interdum faucibus nec sit amet ex. Sed ullamcorper fringilla faucibus. Proin velit elit, lacinia at aliquet et, convallis sed massa. Aliquam e"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
