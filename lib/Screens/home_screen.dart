import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widgets/Home/home_body.dart';
import 'package:butterfly/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBackground,
      appBar: homeAppBar(),
      body: HomeBody(),
    );
  }
}

AppBar homeAppBar() {
  return AppBar(
    title: Text(
      "مرحبا بكم بمتجر الالكترونيات",
      style: GoogleFonts.getFont("Almarai"),
    ),
    elevation: 0,
    centerTitle: false,
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.menu),
      ),
    ],
  );
}
