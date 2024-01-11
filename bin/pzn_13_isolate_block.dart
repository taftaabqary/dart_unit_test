import 'dart:io';

Future<String> block() async {
  sleep(Duration(seconds: 5));
  return 'Block';
}

void main() {
  print('Before Block');
  block().then((value) => print(value));
  print('Done');
}