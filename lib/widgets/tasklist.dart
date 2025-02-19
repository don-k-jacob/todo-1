import 'package:flutter/material.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(17).copyWith(left: 12),
            child: Image.asset('images/study.png'),
          ),

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Study lesson"),
                Text("4.00 pm"),
              ],
            ),
          ),
          // SizedBox(
          //  width: 10,
          // ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Checkbox(value: true, onChanged: ((value) {})),
          ),
        ],
      ),
    );
  }
}
