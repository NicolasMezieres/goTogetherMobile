import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_app/pages/event_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "Bienvenue sur l'application",
          style: GoogleFonts.damion(textStyle: TextStyle(fontSize: 28)),
          textAlign: TextAlign.center,
        ),
        Image.asset(
          "assets/images/onigiri.png",
          height: 100,
        ),
        Text(
          "Ceci est un magnifique onigiri et ce texte est centré",
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
        Padding(padding: EdgeInsets.only(top: 20, bottom: 20)),
        // SvgPicture.asset(
        //   "assets/images/papillon.svg",
        //   height: 100,
        // ),
        // Text(
        //     "Ceci est un magnifique papillon et il vous défonce votre gueule et ce texte n'est pas centré"),
        // Padding(padding: EdgeInsets.only(top: 20, bottom: 20)),
        // ElevatedButton.icon(
        //   style: ButtonStyle(
        //     padding: WidgetStatePropertyAll(EdgeInsets.all(16)),
        //     backgroundColor: WidgetStatePropertyAll(Colors.green),
        //   ),
        //   onPressed: () => {
        //     Navigator.push(
        //         context,
        //         PageRouteBuilder(
        //             pageBuilder: (
        //           _,
        //           __,
        //           ___,
        //         ) =>
        //                 EventPage()))
        //   },
        //   icon: Icon(
        //     Icons.calendar_month,
        //     color: Colors.white,
        //   ),
        //   label: Text(
        //     "Afficher le planning",
        //     style: TextStyle(fontSize: 20, color: Colors.white),
        //   ),
        // )
      ]),
    );
  }
}
// Scaffold(
//       appBar: AppBar(
//         title: Center(child: Text("Ma première app")),
//       ),
//       body: SingleChildScrollView(
//         child: Center(
//           child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//             Text(
//               "Bienvenue sur l'application",
//               style: GoogleFonts.damion(textStyle: TextStyle(fontSize: 28)),
//               textAlign: TextAlign.center,
//             ),
//             Image.asset(
//               "assets/images/onigiri.png",
//               height: 100,
//             ),
//             Text(
//               "Ceci est un magnifique onigiri et ce texte est centré",
//               style: TextStyle(fontSize: 20),
//               textAlign: TextAlign.center,
//             ),
//             Padding(padding: EdgeInsets.only(top: 20, bottom: 20)),
//             SvgPicture.asset(
//               "assets/images/papillon.svg",
//               height: 100,
//             ),
//             Text(
//                 "Ceci est un magnifique papillon et il vous défonce votre gueule et ce texte n'est pas centré"),
//             Padding(padding: EdgeInsets.only(top: 20, bottom: 20)),
//             ElevatedButton.icon(
//               style: ButtonStyle(
//                 padding: WidgetStatePropertyAll(EdgeInsets.all(16)),
//                 backgroundColor: WidgetStatePropertyAll(Colors.green),
//               ),
//               onPressed: () => {
//                 Navigator.push(
//                     context,
//                     PageRouteBuilder(
//                         pageBuilder: (
//                       _,
//                       __,
//                       ___,
//                     ) =>
//                             EventPage()))
//               },
//               icon: Icon(
//                 Icons.calendar_month,
//                 color: Colors.white,
//               ),
//               label: Text(
//                 "Afficher le planning",
//                 style: TextStyle(fontSize: 20, color: Colors.white),
//               ),
//             )
//           ]),
//         ),
//       ),
//     );
