Future<String> sayHello($name) {
  return Future.value($name);
  // return throw Exception('Ups');
}

void main() {
  sayHello('Althaaf')
      .then((value) => print('Hello $value'))
      .catchError((error) => print('Erro with message: ${error.message}'))
      .whenComplete(() => print('All done'));
  print('done');
}