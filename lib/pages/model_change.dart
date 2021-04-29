import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:qa_app/widget/header.dart';

// ignore: must_be_immutable, camel_case_types
class modelForm extends StatefulWidget {
  @override
  _modelFormState createState() => _modelFormState();
}

// ignore: camel_case_types
class _modelFormState extends State<modelForm> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: MediaQuery.of(context).orientation == Orientation.landscape
          ? SingleChildScrollView(
        child: ContentArea(),
      )
          : ContentArea(),
    );
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
        Header(),
        cardForm(context),
        submitButton(context),
      ],
    );
  }
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
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Line :",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 18,
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

class DatePicker extends StatefulWidget {
  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime _dateTime;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('Pick Date :',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 18,
              )),
          Padding(
            padding: const EdgeInsets.only(left: 120),
            child: Text(_dateTime == null
                ? 'Nothing date selected'
                : DateFormat('dd/MMM/yyyy').format(_dateTime)),
          ),
          // ignore: deprecated_member_use
          RaisedButton(
              elevation: 8,
              padding: const EdgeInsets.all(0.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFB30B20),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                constraints: const BoxConstraints(
                  minWidth: 90.0,
                  minHeight: 40.0,
                ),
                alignment: Alignment.center,
                child: const Text(
                  'Pick a Date',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: _dateTime == null ? DateTime.now() : _dateTime,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2222),
                ).then((date) {
                  setState(() {
                    _dateTime = date;
                  });
                });
              })
        ],
      ),
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
                Padding(
                  padding: const EdgeInsets.only(top: 20,),
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
                        labelText: "Work Order :",
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Lines(),
                DatePicker(),
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
