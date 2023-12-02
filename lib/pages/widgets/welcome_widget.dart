import 'package:flutter/material.dart';
import 'package:tourapp/pages/home_page.dart';
import 'package:tourapp/pages/home_page_2.dart';

class WelcomeWidget extends StatelessWidget {
  String title;
  String description;
  Color color;
  String pathAsset;
  bool button;
  WelcomeWidget({
    required this.title,
    required this.description,
    required this.color,
    required this.pathAsset,
    required this.button,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height - 200,
              // height: 500,
              width: MediaQuery.of(context).size.width - 50,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(pathAsset, height: 150),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  Divider(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Text(description),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  button == true
                      ? ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage2(),
                              ),
                            );
                          },
                          child: Text("Vamos"),
                        )
                      : Container()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
