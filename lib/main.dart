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
      title: 'BILL-ANG',
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


  body: ListView(
    children: [
      Column( //top1

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
          height: 295,
          width: 372,
          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
          margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            gradient: const LinearGradient(
              colors:[
                Color(0xFFCDCDCD),
                Color.fromARGB(0, 121, 121, 121)
              ],
              stops: [0.1 ,0.75],
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
                    SizedBox(
                      width: 300,
                      child:Text(
                            '₱10,000',
                             style: GoogleFonts.inter(
                             fontSize: 45,
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
                    fontSize: 12,
                    fontWeight: FontWeight.w700
                  ),
                )
              ),
              Container( //3rd layer "Auto Cash"
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text(
                  'Auto Cash: On',
                  style: GoogleFonts.inter(
                    fontSize: 12,
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
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF006089)
                  ),
                )
              ),
              Container( //5th Layer Buttons for cash in and paynow colum and row
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 168,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0xFF5FA7C6),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
                            child: SvgPicture.asset("icons/cashin.svg", height: 18),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(20, 9, 0, 0),
                          child: Text(
                            'Cash In', 
                            style: GoogleFonts.inter(
                              fontSize: 21,
                              fontWeight: FontWeight.w600,
                              color: Colors.white
                            )
                          )
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(14, 0, 0, 0),
                      width: 168,
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
                            margin: const EdgeInsets.fromLTRB(15, 9, 0, 0),
                            child: Text(
                              'Pay Now', 
                              style: GoogleFonts.inter(
                                fontSize: 21,
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
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // margin: const EdgeInsets.fromLTRB(0, 6, 0, 0),
                      margin: const EdgeInsets.fromLTRB(22, 10, 15, 10),
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
                      // margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      margin: const EdgeInsets.fromLTRB(22, 10, 15, 10),
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
                      // margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                      margin: const EdgeInsets.fromLTRB(22, 10, 15, 10),
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
                      // margin: const EdgeInsets.fromLTRB(0, 9.8, 0, 0),
                      margin: const EdgeInsets.fromLTRB(22, 10, 15, 10),
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
                    fontSize: 10,
                    fontWeight: FontWeight.w800,
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
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 5),
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
              height: 74,
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
                      color: const Color(0xFFEEEEEE)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(padding: EdgeInsets.fromLTRB( 0, 6, 0, 0,),
                        child: SvgPicture.asset("icons/kurents.svg", height:34)
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 3, 0, 0),
                          child: Text(
                          'Electricity',
                          style: GoogleFonts.inter(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF006089)
                          )
                        )
                        )
                      ],
                    )
                  ),
                  Container( //merch slider 2
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0xFFEEEEEE)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
                          child: SvgPicture.asset("icons/WaterSlide.svg", height:34)
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 3, 0, 0),
                          child: Text(
                          'Water',
                          style: GoogleFonts.inter(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF006089)
                          )
                        )
                        )
                      ],
                    )
                  ),
                  Container( //merch slider 3
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0xFFEEEEEE)
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
                        child:SvgPicture.asset("icons/InternetSlide.svg", height: 34)
                        ),
                        Padding(
                          padding:const EdgeInsets.fromLTRB( 0, 3, 0, 0),
                        child: Text(
                          'Internet',
                          style: GoogleFonts.inter(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color:const Color(0xFF006089)
                          )
                        ))
                      ],
                    ),
                  ),
                  Container( //merch slider 4
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0xFFEEEEEE)
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
                          child: SvgPicture.asset("icons/TranspoSlide.svg", height: 34)
                        ),
                        Padding(
                          padding:const EdgeInsets.fromLTRB(0, 3, 0, 0),
                          child: Text(
                            'Transpo', 
                            style: GoogleFonts.inter(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF006089)
                            )
                          ))
                      ],
                    )
                  ),
                  Container( //merch slider 5
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0xFFEEEEEE)
                    ),
                    child: Column(
                      children: [
                        Padding(
                        padding: const EdgeInsets.fromLTRB( 7, 6, 0, 0),
                        child: SvgPicture.asset("icons/gameSlide.svg", height: 34)
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 3, 0, 0),
                          child: Text(
                            'Games',
                            style: GoogleFonts.inter(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF006089)
                            )
                          ) )
                      ],
                    ),
                  ),
                  Container( //merch slider 6
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0xFFEEEEEE)
                    ),
                    child: Column(
                      children: [
                        Padding(
                        padding: const EdgeInsets.fromLTRB(0, 22, 0, 0),
                        child: SvgPicture.asset("icons/seemore.svg", width: 58,)
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                          child: Text(
                            'See More', 
                            style: GoogleFonts.inter(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color:const Color(0xFF006089)
                            )
                          ))
                      ],
                    )
                  ),
                ],
              )
            )
          ],)
        ),
        Container( //8th layer link your account
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(15, 10, 0, 5),
                child: Text(
                  'Link Your Account', 
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
              height: 74,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                    height: 74,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0xFFEEEEEE)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Image.asset("icons/GcashSingle.png", 
                          width: 50,
                          )
                        ),
                      ],
                    )
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                      height: 74,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color:  const Color(0xFFEEEEEE)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Image.asset("icons/maya.png",
                            width: 80,
                            ),
                          ),
                        ],
                      )
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                      height: 74,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color(0xFFEEEEEE)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Image.asset("icons/mcard.png", 
                            width: 60,
                            fit: BoxFit.fill,)
                          )
                        ],
                      )
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.fromLTRB(5 ,0, 5, 0),
                      height: 74,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color(0xFFEEEEEE)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0),
                            child: Image.asset("icons/BDO.png",
                            width: 70,
                            fit: BoxFit.fill,
                            ),
                          ),
                        ] ,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                      height: 74,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color(0xFFEEEEEE)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0),
                            child: Image.asset("icons/BPI.png",
                            width: 70,
                            fit: BoxFit.fill
                            )
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                      height: 74,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color(0xFFEEEEEE)
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 22, 0, 0),
                            child: SvgPicture.asset("icons/seemore.svg",
                            width: 58,
                            )
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                            child: Text(
                              'See More',
                              style: GoogleFonts.inter(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF006089)
                              )
                            ),
                          )
                        ],
                      )
                    )
                  ],
                ),
              ),
            ],
          )
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 10, 0, 5),
                    child: Text(
                      'Upcoming Due Dates',
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF2C94C1),
                      )
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(15, 10, 0, 5),
                    margin: const EdgeInsets.fromLTRB(90, 10, 0, 0),
                    child: Text(
                      'View All',
                      style: GoogleFonts.inter(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF006089)
                      )
                    )
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                height: 70,
                width: 360,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFEEEEEE)
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //image container
                      Container(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Image.asset("icons/Netflix.png",
                        height: 80
                        )
                      ),
                      //Bill Name and Due date Container (column)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                          child: Text(
                            'Netflix', 
                            style: GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            )
                           ),
                          ),
                          Padding(padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Text(
                            'Today', 
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF006089)
                            )
                            )
                          ),
                        ],
                      ),
                      //Amount container
                      Container(
                        padding: const EdgeInsets.fromLTRB(120, 14, 0, 0),
                        child: Text(
                          '₱550', 
                          style: GoogleFonts.inter(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Colors.black
                          )
                        )
                      )
                    ],
                ),
              ),
                Container(
                margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                height: 70,
                width: 360,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFEEEEEE)
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //image container
                      Container(
                        padding: const EdgeInsets.fromLTRB(20, 13, 28, 0),
                        child: SvgPicture.asset("icons/kurents.svg",
                        height: 40
                        )
                      ),
                      //Bill Name and Due date Container (column)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                          child: Text(
                            'Electricity', 
                            style: GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            )
                           ),
                          ),
                          Padding(padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Text(
                            'May 30, 2024', 
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF006089)
                            )
                            )
                          ),
                        ],
                      ),
                      //Amount container
                      Container(
                        padding: const EdgeInsets.fromLTRB(60, 14, 0, 0),
                        child: Text(
                          '₱1,234', 
                          style: GoogleFonts.inter(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Colors.black
                          )
                        )
                      )
                    ],
                ),
              ),
                 Container(
                margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                height: 70,
                width: 360,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFEEEEEE)
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //image container
                      Container(
                        padding: const EdgeInsets.fromLTRB(20, 13, 28, 0),
                        child: SvgPicture.asset("icons/WaterSlide.svg",
                        height: 40
                        )
                      ),
                      //Bill Name and Due date Container (column)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                          child: Text(
                            'Water', 
                            style: GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            )
                           ),
                          ),
                          Padding(padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Text(
                            'June 1, 2024', 
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF006089)
                            )
                            )
                          ),
                        ],
                      ),
                      //Amount container
                      Container(
                        padding: const EdgeInsets.fromLTRB(120, 14, 0, 0),
                        child: Text(
                          '₱351', 
                          style: GoogleFonts.inter(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Colors.black
                          )
                        )
                      )
                    ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                height: 70,
                width: 360,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFEEEEEE)
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //image container
                      Container(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Image.asset("icons/Spotify.png",
                        height: 80
                        )
                      ),
                      //Bill Name and Due date Container (column)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                          child: Text(
                            'Spotify', 
                            style: GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            )
                           ),
                          ),
                          Padding(padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Text(
                            'May 25, 2024', 
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF006089)
                            )
                            )
                          ),
                        ],
                      ),
                      //Amount container
                      Container(
                        padding: const EdgeInsets.fromLTRB(115, 14, 0, 0),
                        child: Text(
                          '₱250', 
                          style: GoogleFonts.inter(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Colors.black
                          )
                        )
                      )
                    ],
                ),
              )
            ],
          )
        )
      ],
    ),
      ],

    ),
   
    );
  }
}