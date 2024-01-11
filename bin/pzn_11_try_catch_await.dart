Future<String> firstName() async {
  return 'Muhammad';
}

Future<String> lastName() async {
  return 'Abqary';
}

Future<String> sayHello(String name) async {
  // return throw Exception('Ups');
  return 'Helloww $name';
}

Future<void> say() async {
  try{
    var first = await firstName();
    var last = await lastName();
    var hello = await sayHello('$first $last');
    print(hello);
  } catch(e) {
    print(e);
  } finally {
    print('Done Function Say');
  }
}

void main() {
  say();

  print('Done');
}