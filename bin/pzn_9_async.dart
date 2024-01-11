Future<String> sayHello(String name) async {
  return 'Heloww $name';
}

void main() {
  sayHello('Althaaf')
      .then((value) => print(value));

  print('Done');
}