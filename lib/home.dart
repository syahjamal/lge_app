import 'package:flutter/material.dart';
import 'package:qa_app/login.dart';

// ignore: must_be_immutable
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  List<Widget> _widgetList = [bgHeaderHome(), ContentArea(), Login()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: MediaQuery.of(context).orientation == Orientation.landscape
          ? SingleChildScrollView(
              child: _widgetList[_currentIndex],
            )
          : _widgetList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedIconTheme: IconThemeData(color: Colors.grey[400]),
        selectedIconTheme: IconThemeData(color: Colors.red[800]),
        unselectedLabelStyle: TextStyle(color: Colors.grey[400]),
        selectedLabelStyle: TextStyle(color: Colors.black),
        fixedColor: Colors.red[800],
        type: BottomNavigationBarType.shifting,
        onTap: onTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 36), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list_alt,
              size: 36,
            ),
            label: 'Form',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.exit_to_app,
              size: 36,
            ),
            label: 'Logout',
          ),
        ],
      ),
    );
  }

  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

class ContentArea extends StatelessWidget {
  const ContentArea({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        bgHeaderHome(),
        cardForm(context),
        submitButton(context),
      ],
    );
  }
}

Widget bgHeaderHome() {
  return Container(
    height: 150,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.red[800],
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(30.0),
        bottomRight: Radius.circular(30.0),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.only(
        top: 60,
        left: 20,
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Sulaiman Syah Jamal",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            Text(
              "706436",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            )
          ]),
    ),
  );
}

class Item {
  const Item(this.name, this.icon);
  final String name;
  final Icon icon;
}

class Lines extends StatefulWidget {
  @override
  _LinesState createState() => _LinesState();
}

class _LinesState extends State<Lines> {
  Item selectedLines;
  List<Item> lines = <Item>[
    const Item(
        'T1',
        Icon(
          Icons.precision_manufacturing_rounded,
          color: const Color(0xFFA30505),
        )),
    const Item(
        'T2',
        Icon(
          Icons.precision_manufacturing_rounded,
          color: const Color(0xFFA30505),
        )),
    const Item(
        'T3',
        Icon(
          Icons.precision_manufacturing_rounded,
          color: const Color(0xFFA30505),
        )),
    const Item(
        'T4',
        Icon(
          Icons.precision_manufacturing_rounded,
          color: const Color(0xFFA30505),
        )),
    const Item(
        'T5',
        Icon(
          Icons.precision_manufacturing_rounded,
          color: const Color(0xFFA30505),
        )),
    const Item(
        'T6',
        Icon(
          Icons.precision_manufacturing_rounded,
          color: const Color(0xFFA30505),
        )),
    const Item(
        'OBM1',
        Icon(
          Icons.precision_manufacturing_rounded,
          color: const Color(0xFFA30505),
        )),
    const Item(
        'OBM2',
        Icon(
          Icons.precision_manufacturing_rounded,
          color: const Color(0xFFA30505),
        )),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(children: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Text(
            "Line :",
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 18,
            ),
          ),
        ),
        DropdownButton<Item>(
          hint: Text("Select You're Line"),
          elevation: 8,
          value: selectedLines,
          underline: Container(
            height: 1,
            color: Colors.black,
          ),
          // ignore: non_constant_identifier_names
          onChanged: (Item Value) {
            setState(() {
              selectedLines = Value;
            });
          },
          items: lines?.map((Item line) {
            return DropdownMenuItem<Item>(
                value: line,
                child: Row(
                  children: <Widget>[
                    line.icon,
                    SizedBox(width: 10),
                    Text(
                      line.name,
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ));
          })?.toList(),
        ),
      ]),
    );
  }
}

Widget cardForm(BuildContext context) {
  return Container(
      width: MediaQuery.of(context).size.width,
      child: Flexible(
        child: Card(
          margin: const EdgeInsets.only(
              right: 30.0, left: 30.0, bottom: 10.0, top: 30.0),
          elevation: 8,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    "Model Change Form",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                Lines(),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.date_range,
                          color: Colors.pinkAccent,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.pinkAccent,
                          ),
                        ),
                        labelText: "Date :",
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 30),
                  child: Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.qr_code,
                          color: Colors.pinkAccent,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.pinkAccent,
                          ),
                        ),
                        labelText: "Model :",
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ));
}

// ignore: missing_return
Widget submitButton(BuildContext context) {
  return Container(
    margin: const EdgeInsets.all(20.0),
    child: Padding(
        padding:
            const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 10),
        // ignore: deprecated_member_use
        child: Flexible(
          // ignore: deprecated_member_use
          child: RaisedButton(
            elevation: 8,
            onPressed: () {
              Navigator.pushNamed(context, '/model');
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(80.0),
            ),
            padding: const EdgeInsets.all(0.0),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[Color(0xffa88e8e), Color(0xFFB30B20)],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(80.0),
                ),
              ),
              constraints: const BoxConstraints(
                minWidth: 150.0,
                minHeight: 50.0,
              ),
              alignment: Alignment.center,
              child: const Text(
                'Submit',
                textAlign: TextAlign.center,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        )),
  );
}
