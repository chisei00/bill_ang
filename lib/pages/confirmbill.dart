import 'package:billang_pay_feature/pages/addbills.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

//Represents the theme of the entire application (title, theme, color scheme)

class ConfirmBillsPage extends StatelessWidget {
  final String selectedAccount;
  final String selectedVal;
  final String amount;
  final DateTime selectedDate;
  final String? remarks;

  const ConfirmBillsPage({
    required this.selectedAccount,
    required this.selectedVal,
    required this.amount,
    required this.selectedDate,
    this.remarks,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF006089),
        title: Center(
          child: Text("Add Bills",

            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFFF7F7F7),
              fontSize: 24,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xFFF7F7F7),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const AddBillsPage()),
            );
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.info_outline_rounded,
              color: Color(0xFFF7F7F7),
            ),
            onPressed: () {
              // Handle information icon press here

            },
          ),

        ],
      ),


      body: Column(
        children: <Widget>[

          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 30.0, right: 30.0),
              child: ListView(
                children: <Widget>[
                  //Dropdown menu

                  FormSection(
                    header: '',
                    children: [
                      Center(
                        child:
                        SvgPicture.asset(
                          'assets/Confirmation Page Process.svg',
                        ),
                      ),
                      SizedBox(height: 30),
                      Row(
                        children: [

                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'DETAILS',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF787878),
                                  ),
                                ), // Customize header style
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Source Account',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFF787878),
                                          ),
                                        ),
                                        Text(
                                          '$selectedAccount',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFF020000),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                  FormSection(
                    header: '',
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'BILLING DETAILS',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF787878),
                                  ),
                                ), // Customize header style

                              ],
                            ),

                          ),
                          Expanded(
                            flex: 1,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (
                                          context) => const AddBillsPage()),
                                );
                              },
                              child: Text(
                                'Edit',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: Color(0xFF006089),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Biller',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF787878),
                                ),
                              ),
                              Text(
                                '$selectedVal',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF020000),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Amount',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF787878),
                                ),
                              ),
                              Text(
                                '₱$amount',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF020000),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Due Date',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF787878),
                                ),
                              ),
                              Text(
                                '${selectedDate.month}/${selectedDate.day}/${selectedDate.year}',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF020000),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          if (remarks != null)
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Remarks',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF787878),
                                    ),
                                  ),
                                  Text(
                                    '$remarks',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF020000),
                                    ),
                                  ),
                                ],
                              ),
                        ],
                      ),
                    ],
                  ),
                  FormSection(
                    header: '',
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'PAYMENT DETAILS',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF787878),
                                  ),
                                ), // Customize header style
                                Text("Manual Payment",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF020000),
                                  ),
                                ),
                                SizedBox(width: 50, height: 20),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (
                                          context) => const AddBillsPage()),
                                );
                              },
                              child: Text(
                                'Edit',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: Color(0xFF006089),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 50, height: 20),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AddBillsPage()),
              );
            },
            child: Container(
              color: Color(0xFF40916C),
              padding: EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  'Confirm',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),


    );
  }
}


/*

  @override
  Widget build(BuildContext context) {
    // Use the form data here to display on the ConfirmBillsPage
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Bills'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Selected Account: $selectedAccount'),
            Text('Selected Value: $selectedVal'),
            Text('Amount: $amount'),
            Text('Selected Date: ${selectedDate.month}/${selectedDate.day}/${selectedDate.year}'),
            if (remarks != null) Text('Remarks: $remarks'),
          ],
        ),
      ),
    );
  }
}

 */




