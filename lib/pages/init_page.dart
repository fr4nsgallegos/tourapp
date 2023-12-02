import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tourapp/pages/widgets/welcome_widget.dart';
import 'package:getwidget/getwidget.dart';

// INIT PAGE CON LIBRERIA GETWIDGET
class InitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GFCarousel(
        height: MediaQuery.of(context).size.height,
        hasPagination: true,
        activeIndicator: Colors.orange,
        autoPlay: true,
        enlargeMainPage: true,
        items: [
          WelcomeWidget(
            title: "Viaja con nosotros",
            description:
                "Phasellus sed augue vitae ex facilisis volutpat. Nullam eleifend augue lorem, in molestie leo consectetur sed. Praesent nec enim at sem interdum faucibus nec sit amet ex. Sed ullamcorper fringilla faucibus. Proin velit elit, lacinia at aliquet et, convallis sed massa. Aliquam e",
            color: Colors.cyan,
            pathAsset: "assets/icons/avion.png",
          ),
          WelcomeWidget(
            title: "Agregar items",
            description:
                "Phasellus sed augue vita ullamcorper fringilla faucibus. Proin velit elit, lacinia at aliquet et, convallis sed massa. Aliquam e",
            color: Colors.orangeAccent,
            pathAsset: "assets/icons/agregar.png",
          ),
          WelcomeWidget(
            title: "Viaja sin imprimir el qr",
            description:
                "Phasellus sed augue vitae ex facilisis volutpat. Nullam eleifend augue lorem, in molestie leo consectetur sed. ",
            color: Colors.pinkAccent,
            pathAsset: "assets/icons/print.png",
          ),
        ],
      ),
    );
  }
}

// INIT PAGE CON LIBRERIA CAROUSEL SLIDER
// class InitPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: CarouselSlider(
//           items: [
//             WelcomeWidget(
//               title: "Viaja con nosotros",
//               description:
//                   "Phasellus sed augue vitae ex facilisis volutpat. Nullam eleifend augue lorem, in molestie leo consectetur sed. Praesent nec enim at sem interdum faucibus nec sit amet ex. Sed ullamcorper fringilla faucibus. Proin velit elit, lacinia at aliquet et, convallis sed massa. Aliquam e",
//               color: Colors.cyan,
//               pathAsset: "assets/icons/avion.png",
//             ),
//             WelcomeWidget(
//               title: "Agregar items",
//               description:
//                   "Phasellus sed augue vita ullamcorper fringilla faucibus. Proin velit elit, lacinia at aliquet et, convallis sed massa. Aliquam e",
//               color: Colors.orangeAccent,
//               pathAsset: "assets/icons/agregar.png",
//             ),
//             WelcomeWidget(
//               title: "Viaja sin imprimir el qr",
//               description:
//                   "Phasellus sed augue vitae ex facilisis volutpat. Nullam eleifend augue lorem, in molestie leo consectetur sed. ",
//               color: Colors.pinkAccent,
//               pathAsset: "assets/icons/print.png",
//             ),
//           ],
//           options: CarouselOptions(
//             height: MediaQuery.of(context).size.height,
//             autoPlay: true,
//             // enableInfiniteScroll: false,
//             autoPlayCurve: Curves.linear,
//             enlargeCenterPage: true,
//             autoPlayAnimationDuration: Duration(seconds: 1),
//           ),
//         ),
//       ),
//     );
//   }
// }
