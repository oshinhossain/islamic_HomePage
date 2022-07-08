//
// import 'package:clip_shadow/clip_shadow.dart';
// import 'package:flutter/material.dart';
// import 'package:image/Screen/menu_screen.dart';
// import '../utils/helper.dart';
//
// class CustomNavBar extends StatelessWidget {
//   final bool home;
//   final bool menu;
//   final bool offer;
//   final bool profile;
//   final bool more;
//
//   const CustomNavBar(
//       {
//         this.home = false,
//         this.menu = false,
//         this.offer = false,
//         this.profile = false,
//         this.more = false
//       }
//       )
//       : super();
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       //height: 120,
//       width: Helper.gatScreenWidth(context),
//       child: Stack(
//         children: [
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: ClipShadow(
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black38,
//                   offset: Offset(
//                     0,
//                     -5,
//                   ),
//                   blurRadius: 10,
//                 ),
//               ],
//               clipper: CustomNavBarClipper(),
//               child: Container(
//                 height: 80,
//                 width: Helper.gatScreenWidth(context),
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 color: Colors.white,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     GestureDetector(
//                       onTap: () {
//                         if (!menu) {
//                           // MaterialPageRoute(
//                           //   builder: (Context) => Menu_Screen(),
//                           //
//                           // );
//                         }
//                       },
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           menu
//                               ? Image.asset(
//                             Helper.getAssetName(
//                                 fileName: "virtual",
//                                 type: "more_filled.png"),
//                           )
//                               : Image.asset(
//                             Helper.getAssetName(
//                                 fileName: "virtual", type: "more.png"),
//                           ),
//                           menu
//                               ? Text("Menu",
//                               style: TextStyle(color: Colors.orange))
//                               : Text("Menu"),
//                         ],
//                       ),
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         if (!offer) {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (Context) => const Menu_Screen(),
//                             ),
//                           );
//                         }
//                       },
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children:  [
//                           profile
//                               ? Image.asset(
//                             Helper.getAssetName(
//                                 fileName: "virtual",
//                                 type: "bag_filled.png"),
//                           )
//                               : Image.asset(
//                             Helper.getAssetName(
//                               fileName: "virtual",
//                               type: "bag.png",
//                             ),
//                           ),
//                           profile
//                               ? Text("Offers",
//                               style: TextStyle(color: Colors.orange))
//                               : Text("Offers"),
//                         ],
//
//                       ),
//                     ),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         if (!profile) {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (Context) => const Menu_Screen(),
//                             ),
//                           );
//                         }
//                       },
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           profile
//                               ? Image.asset(
//                             Helper.getAssetName(
//                                 fileName: "virtual",
//                                 type: "user_filled.png"),
//                           )
//                               : Image.asset(
//                             Helper.getAssetName(
//                               fileName: "virtual",
//                               type: "user.png",
//                             ),
//                           ),
//                           profile
//                               ? Text("Profile",
//                               style: TextStyle(color: Colors.orange))
//                               : Text("Profile"),
//                         ],
//                       ),
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         if (!more) {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (Context) => const Menu_Screen(),
//                             ),
//                           );
//                         }
//                       },
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           more
//                               ? Image.asset(
//                             Helper.getAssetName(
//                               fileName: "virtual",
//                               type: "menu_filled.png",
//                             ),
//                           )
//                               : Image.asset(
//                             Helper.getAssetName(
//                               fileName: "virtual",
//                               type: "menu.png",
//                             ),
//                           ),
//                           more
//                               ? Text("Profile",
//                               style: TextStyle(color: Colors.orange))
//                               : Text("More"),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(bottom: 30),
//             child: Align(
//               alignment: Alignment.bottomCenter,
//               child: SizedBox(
//                 height: 70,
//                 width: 70,
//                 child: FloatingActionButton(
//                   elevation: 0,
//                   //  backgroundColor: home ? .orange : AppColor.placeholder,
//                   onPressed: () {
//                     if (!home) {
//                       // Navigator.of(context)
//                       //     .pushReplacementNamed(HomeScreen.routeName);
//                     }
//                   },
//                   child: Image.asset(Helper.getAssetName(
//                       fileName: "virtual", type: "home_white.png")),
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
//
// class CustomNavBarClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     Path path = Path();
//     path.moveTo(0, 0);
//     path.lineTo(size.width * 0.3, 0);
//     path.quadraticBezierTo(
//       size.width * 0.375,
//       0,
//       size.width * 0.375,
//       size.height * 0.1,
//     );
//     path.cubicTo(
//       size.width * 0.4,
//       size.height * 0.9,
//       size.width * 0.6,
//       size.height * 0.9,
//       size.width * 0.625,
//       size.height * 0.1,
//     );
//     path.quadraticBezierTo(
//       size.width * 0.625,
//       0,
//       size.width * 0.7,
//       0.1,
//     );
//     path.lineTo(size.width, 0);
//     path.lineTo(size.width, size.height);
//     path.lineTo(0, size.height);
//     path.lineTo(0, 0);
//     path.close();
//     return path;
//   }
//
//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     return true;
//   }
// }
