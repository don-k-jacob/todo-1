import 'package:flutter/material.dart';

import '../todo.dart';

class TaskList extends StatelessWidget {
  TaskList(String text);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(17).copyWith(left: 12),
            child: Image.asset('images/study.png'),
          ),
          Center(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(tasks[index].toString(),
                        style:
                            TextStyle(decoration: TextDecoration.lineThrough)),
                    Text("4:00 pm"),
                  ],
                );
              },
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Checkbox(
                value: true,
                onChanged: ((value) {
                  print("clicked");
                })),
          ),
        ],
      ),
    );
  }
}

class Tasktext {
  String text;
  Tasktext({required this.text});
}

List<Tasktext> tasks = [
  Tasktext(text: "Study time"),
  Tasktext(text: "Run time"),
  Tasktext(text: "party time")
];
