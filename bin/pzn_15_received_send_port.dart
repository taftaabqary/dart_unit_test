import 'dart:io';
import 'dart:isolate';

class Parameter {
  String prefix;
  SendPort sendPort;

  Parameter(this.prefix, this.sendPort);
}

Future<void> numbers(Parameter parameter) async {
  for(var i = 0; i < 10;i++){
    sleep(Duration(seconds: 1));
    parameter.sendPort.send('Prefix ${parameter.prefix} -- $i');
  }

  Isolate.exit();
}

void main(){
  final receivePort = ReceivePort();
  Isolate.spawn(numbers, Parameter('Tafta', receivePort.sendPort));

  receivePort
      .take(5)
      .listen((value) {
    print(value);
  });

  print('Done');
}