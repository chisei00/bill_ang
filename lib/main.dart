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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container( //date and user Greetings
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
        Container( // board for the dashboard
          height: 340,
          width: 372,
          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
          margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            gradient: const LinearGradient(
              colors:[
                Color(0xFFCDCDCD),
                Color(0xFFCDCDCD),
                Color.fromARGB(0, 121, 121, 121)
              ],
              stops: [0.1, 0.50 ,0.90],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
           child: Column( // Dashboard
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container( // row and container for 1st part of dashboard
                padding:const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 300,
                      child:Text(
                            'P10,000',
                             style: GoogleFonts.inter(
                             fontSize: 40,
                             fontWeight: FontWeight.w900
                       ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                      width: 30,
                      height: 30,
                      child: SvgPicture.asset("icons/eye.svg")
                    )
                  ],
                )
              ),
              Container( // 2nd layer "Wallet Balance"
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text(
                  'Wallet Balance',
                  style: GoogleFonts.inter(
                    fontSize: 15,
                    fontWeight: FontWeight.w700
                  ),
                )
              ),
              Container( //3rd layer "Auto Cash"
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text(
                  'Auto Cash: On',
                  style: GoogleFonts.inter(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Color(0XFF006089)
                  ),
                )
              ),
              Container( //4th Layer "Auto Pay"
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text(
                  'Auto Payment: On',
                  style: GoogleFonts.inter(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF006089)
                  ),
                )
              ),
              Container( //5th Layer Buttons for cash in and paynow colum and row
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 155,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0xFF5FA7C6),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                            child: SvgPicture.asset("icons/cashin.svg", height: 18),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 9, 0, 0),
                          child: Text(
                            'Cash In', 
                            style: GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white
                            )
                          )
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 155,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0xFF5FA7C6),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(20, 12, 0, 0),
                            child: SvgPicture.asset("icons/paynow.svg", height: 20)
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(8, 9, 0, 0),
                            child: Text(
                              'Pay Now', 
                              style: GoogleFonts.inter(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white
                              )
                            )
                          )
                        ],
                      )
                    )
                  ],
                ),
              ),
              Container( //6th layer Features Container
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                      height: 60,
                      width: 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("icons/SendF.svg", height: 40),
                          Text(
                            'Send',
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF006089)
                            )
                          )
                        ],
                      )
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      height: 60,
                      width: 50,
                      child: Column(
                        children: [
                          SvgPicture.asset("icons/BankF.svg", height: 38),
                          Text(
                            'Bank', 
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF006089)
                            ),
                          )
                        ],
                      )
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                      height: 60,
                      width: 50,
                      child: Column(
                        children: [
                          SvgPicture.asset("icons/LoadF.svg", height: 40),
                          Text(
                            'Load',
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color:const  Color(0xFF006089)
                            )
                          )
                        ],
                      )
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 9.8, 0, 0),
                      height: 60,
                      width: 50,
                      child: Column(
                        children: [
                          SvgPicture.asset("icons/BillsF.svg"),
                          Text(
                            'Bills',
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF006089)
                            )
                          )
                        ],
                      )
                    )
                  ],
                )
              ),
              Container( // 7th Layer view all services
                alignment: Alignment.center,
                child: Text(
                  'View All Services',
                  style: GoogleFonts.inter(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF006089)
                  )
                )
              ),
            ],
           ),
        ),
        Container( // Merchant Slider
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Container(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Text(
              'Merchants', 
              style: GoogleFonts.inter(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF2C94C1)
              )
             )
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container( // merch slider 1
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0xFFDDDDDD)
                    ),
                  ),
                  Container( //merch slider 2
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0xFFDDDDDD)
                    ),
                  ),
                  Container( //merch slider 3
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0xFFDDDDDD)
                    ),
                  ),
                  Container( //merch slider 4
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0xFFDDDDDD)
                    ),
                  ),
                  Container( //merch slider 5
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0xFFDDDDDD)
                    ),
                  ),
                  Container( //merch slider 6
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0xFFDDDDDD)
                    ),
                  ),
                ],
              )
            )
          ],)
        ),
      ],
    ),
    );
  }
}