import 'package:flutter/material.dart';
import 'package:tourapp/pages/widgets/welcome_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: WelcomeWidget(
            title: "Viaja con nosotros",
            description:
                "Phasellus sed augue vitae ex facilisis volutpat. Nullam eleifend augue lorem, in molestie leo consectetur sed. Praesent nec enim at sem interdum faucibus nec sit amet ex. Sed ullamcorper fringilla faucibus. Proin velit elit, lacinia at aliquet et, convallis sed massa. Aliquam e",
            color: Colors.cyan,
            pathAsset: "assets/icons/avion.png,"),
      ),
    );
  }
}
