import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todo/widgets/createlist.dart';

class AddTaskPage extends StatefulWidget {
  const AddTaskPage({super.key});

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  DateTime selectedDate = DateTime.now();
  // Future<Null> _selectDate(BuildContext context) async {
  // final DateTime picked = await showDatePicker(
  //     context: context,
  //     initialDate: selectedDate,
  //     initialDatePickerMode: DatePickerMode.day,
  //     firstDate: DateTime(2015),
  //     lastDate: DateTime(2101));
  // if (picked != null)
  //   setState(() {
  //     selectedDate = picked;
  //     _dateController.text = DateFormat.yMd().format(selectedDate);
  //   });
  //}

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    TextEditingController taskTitleController = TextEditingController();

    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          //width: 398.95,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(45.59),
            color: Color(0xffF1F5F9),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 17.24, top: 31.58),
                child: Text(
                  "Create new task",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width / 5, vertical: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Task Title",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.29),
                      child: Container(
                        width: 351,
                        height: 50,
                        decoration: BoxDecoration(color: Color(0xfffffffff)),
                        child: TextFormField(
                          controller: taskTitleController,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 21.71),
                      child: Text("Category"),
                    ),
                    Container(
                      height: 50,
                      width: 304,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 13),
                        child: Row(
                          children: [
                            Image.asset('images/study.png'),
                            Image.asset('images/run.png'),
                            Image.asset('images/party.png'),
                            // Image.asset('images/img1.png'),
                            // Image.asset('images/img2.png'),
                            // Image.asset('images/img3.png'),
                          ],

                          //child: ListView.builder(
                          //    itemCount: 4,
                          //   itemBuilder: ((context, index) {
                          //    return createtask();
                          //  })),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 19),
                      child: Text(
                        "Date and time",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        //                      InkWell(
                        // onTap: () {
                        //   _selectDate(context);
                        // },
                        // child: Container(
                        //   width: _width / 1.7,
                        //   height: _height / 9,
                        //   margin: EdgeInsets.only(top: 30),
                        //   alignment: Alignment.center,
                        //   decoration: BoxDecoration(color: Colors.grey[200]),
                        //   child: TextFormField(
                        //     style: TextStyle(fontSize: 40),
                        //     textAlign: TextAlign.center,
                        //     enabled: false,
                        //     keyboardType: TextInputType.text,
                        //     controller: _dateController,
                        //     onSaved: (String val) {
                        //       _setDate = val;
                        ///    },
//       decoration: InputDecoration(
//           disabledBorder:
//               UnderlineInputBorder(borderSide: BorderSide.none),
//          contentPadding: EdgeInsets.only(top: 0.0)),
//     ),
//   ),
// ),,
                        Padding(
                          padding: const EdgeInsets.only(top: 7.29, left: 23),
                          child: Container(
                            width: 171.85,
                            height: 50,
                            decoration:
                                BoxDecoration(color: Color(0xfffffffff)),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 16.41, left: 14.59),
                              child: Text("12:00 pm"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
