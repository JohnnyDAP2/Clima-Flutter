import 'dart:io';

void main() {
  performTasks();
}

performTasks() async {
  task1();
  String text = await task2();
  task3(text);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future task2() async {
  Duration seconds = Duration(seconds: 2);
  //synchronous
//  sleep(seconds);
  String result;
  //Asynchronous
  await Future.delayed(seconds, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });
  return result;
}

void task3(String dataFromTask2) {
  String result = 'task 3 data';
  print('Task 3 complete with $dataFromTask2');
}
