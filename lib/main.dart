import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Screens/home_screen.dart';
import 'constants.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Electronic Store',
      debugShowCheckedModeBanner: false,
      // for theme of App
      theme: ThemeData(
        primaryColor: primaryBackground,
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: primaryBackground),
        //using Almarai Font
        textTheme: GoogleFonts.almaraiTextTheme(Theme.of(context).textTheme),

      ),
      // For Arabic Language RTL
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [Locale("ar","AE")],
      locale: Locale("ar","AE"),
      ////////////////////////////////////////////////////
      home: HomeScreen(),
    );
  }
}

