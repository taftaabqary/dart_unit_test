import 'package:test/test.dart';

String sayHello(String name) {
  return 'Hello $name';
}

void main() {
  test('Say Hello Dart', () {
    var response = sayHello('Tafta');
    expect(response, 'Hello Tafta');
  });
}