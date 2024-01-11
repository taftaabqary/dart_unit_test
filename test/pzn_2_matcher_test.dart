import 'package:test/test.dart';

String sayHello(String name) {
  return 'Hello $name';
}

int sum(int a, int b) {
  return a + b;
}

void main() {
  test('Say Hello Dart', () {
    var response = sayHello('Tafta');
    expect(response, startsWith('Hello'));
    expect(response, endsWith('Tafta'));
    expect(response, equalsIgnoringCase('hello tafta'));
    expect(response, isA<String>());
  });

  test('Sum Matcher Dart', () {
    expect(sum(1, 1), equals(2));
    expect(sum(1, 1), greaterThan(1));
    expect(sum(1, 1), lessThan(10));
  });
}