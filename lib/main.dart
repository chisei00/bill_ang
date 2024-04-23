import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BIll-ang Add Bills Features',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Add Bill'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //Dropdown
  final _billerList = [ "Casureco", "Metropolitan Naga Water District", "Netflix", "Spotify"];
  String? _selectedVal;

  final _account = [ "Eric Tan Jr."];
  String? _selectedAccount;

  //Date
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF006089),
        title: Center(
          child: Text(
            widget.title,
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
            // Handle information icon press here

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
              padding: EdgeInsets.all(30.0),
              child: ListView(
                children: <Widget>[

                  //Dropdown menu
                  SizedBox(width: 50, height: 20),
                  FormSection(
                    header: 'SOURCE ACCOUNT',
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 2.5, horizontal: 15),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey), // Add border here
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: DropdownButton(
                          value: _selectedAccount,
                          hint: Text('SELECT ACCOUNT'), // Hint text
                          isExpanded: true,
                          underline: SizedBox(),
                          items: _account.map(
                                (e) => DropdownMenuItem(
                              child: Text(e),
                              value: e,
                            ),
                          ).toList(),
                          onChanged: (val) {
                            setState(() {
                              _selectedAccount = val as String?;
                            });
                          },
                        ),
                      ),
                      SizedBox(width: 50, height: 20),
                    ],
                  ),

                  FormSection(
                    header: 'BILL DETAILS',
                    children: [
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 2.5, horizontal: 15),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey), // Add border here
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: DropdownButton(
                                  value: _selectedVal,
                                  hint: Text('SELECT BILLER'), // Hint text
                                  isExpanded: true,
                                  underline: SizedBox(),
                                  items: _billerList.map(
                                        (e) => DropdownMenuItem(
                                      child: Text(e),
                                      value: e,
                                    ),
                                  ).toList(),
                                  onChanged: (val) {
                                      setState(() {
                                        _selectedVal = val as String?;
                                      });
                                  },
                                ),
                              ),


                      SizedBox(width: 50, height: 20),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.money_rounded),
                            labelText: 'Bill Amount',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 15)
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 50, height: 20),

                  //Due Date - Can pick dates here
                  FormSection(
                    header: 'Due Date',
                    children: [
                      GestureDetector(
                        onTap: () async {
                          final DateTime? date = await showDatePicker(
                            context: context,
                            firstDate: DateTime(2024),
                            lastDate: DateTime(3000),
                          );
                          if(date != null) {
                            setState(() {
                              selectedDate = date;
                            });
                          } 
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey), // Add border here
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.calendar_today,
                                  size: 24.0,
                                  color: Colors.black,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(13.0),
                                  child: selectedDate != null
                                      ? Text(
                                    "${selectedDate.month} - ${selectedDate.day} - ${selectedDate.year}",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                    ),
                                  )
                                      : Text(
                                    "MM/DD/YYYY",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.grey, // Placeholder text color
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),


                      SizedBox(width: 50, height: 20),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Remarks (Optional)',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 15)
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {

            },
            child: Container(
              color: Color(0xFF015073),
              padding: EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  'Next',
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


// form section
class FormSection extends StatelessWidget {
  final String header;
  final List<Widget> children;


  const FormSection({
    Key? key,
    required this.header,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          header,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        ...children,
      ],
    );
  }
}
