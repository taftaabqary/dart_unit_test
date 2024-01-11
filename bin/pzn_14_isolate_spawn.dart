import 'dart:io';
import 'dart:isolate';

Future<void> sayHello(String name) async{
  sleep(Duration(seconds: 2));
  print('Helloww $name');
  Isolate.exit();
}

void main() {
  Isolate.spawn(sayHello, 'Althaaf');
  print('Done');
}