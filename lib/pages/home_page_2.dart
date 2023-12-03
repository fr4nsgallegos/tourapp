import 'package:flutter/material.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.rocket,
              color: Colors.orange,
            ),
            SizedBox(
              width: 8.0,
            ),
            Text(
              "Discount Tour",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              "Country",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(),
            )
          ],
        ),
      ),
    );
  }
}
