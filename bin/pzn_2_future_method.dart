
Future<String> sayHello(String name) {
  // return Future.delayed(Duration(seconds: 2), () {
    // return 'Hellow $name';
    // throw Error();
  // });

  return Future.error(Exception('Ups'));
  // return Future.value('Hellow $name');
}

void main() {
  sayHello('Althaaf')
      .onError((error, stackTrace) => 'Fallback')
      .whenComplete(() => print('Done Future'))
      .then((value) => print(value))
      .catchError((error) => print('Error with message: ${error.message}'));
  print('done');
}