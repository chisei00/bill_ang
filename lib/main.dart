import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

/* Authored by: Jerkins Genesis Naldoza
Company: Jerk Enterprises
Project: Bill-Ang
Feature: [BLNG-S02] Homepage
Description: Homepage for Bill-Ang
 */

//Tying all other pages to the homepage or the base of the app

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title:  Text("HOME",
      style: GoogleFonts.inter( 
      color:  Color(0xFF2C94C1),
      fontSize: 18,
      fontWeight: FontWeight.w600, )),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.white,
      leading: Container(
        height: 3,
        width: 3,
        padding:const EdgeInsets.all(10),
        child: SvgPicture.asset('assets/icons/Logo.svg'),
      ),
      actions: <Widget>[
        IconButton(
        splashRadius: 0.0001,
        padding: const EdgeInsets.all(0),
        onPressed: () {},
        icon: Image.asset("icons/qr.png", height: 30)),
        IconButton(
        splashRadius: 0.0001,
        padding: const EdgeInsets.fromLTRB(0,10,10,10),
        onPressed: () {}, 
        icon: SvgPicture.asset("icons/Notification.svg", height: 30))
      ],
      ),
    body: Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 1),
          height: 25,
          child: Text(
            DateFormat.MMMMd().format(DateTime.now()),
            style: GoogleFonts.inter(
              fontSize: 20,
              fontWeight: FontWeight.w500
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.fromLTRB(10,0,0,3),
          margin: const EdgeInsets.all(0),
          child:  Text(
            'Hello, Eric!',
            style: GoogleFonts.inter(
              fontSize: 40,
              fontWeight: FontWeight.w800
            ),
          ),
        ),
        Container(
          height: 278,
          width: 372,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            gradient: const LinearGradient(
              colors:[
                Color.fromARGB(255, 151, 151, 151),
                Color.fromARGB(255, 151, 151, 151),
                Color.fromARGB(0, 121, 121, 121)
              ],
              stops: [0.1, 0.50 ,0.90],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
           child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 0, 0), 
                  child:Text(
                  '₱10,000',
                    style: GoogleFonts.inter(
                    fontSize: 40,
                    fontWeight: FontWeight.w900
                  ), //GoogleFonts
                ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                child:  Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text(
                    'Wallet Balance',
                    style: GoogleFonts.inter(
                      fontSize: 15,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                child:  Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text(
                    'Auto Cash: On',
                    style: GoogleFonts.inter(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF006089)
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                child:  Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text(
                    'Auto Payment: On',
                    style: GoogleFonts.inter(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF006089)
                    ),
                  ),
                ),
              ),
            ],
           ),
        ),
      ],
    ),
    );
  }
}