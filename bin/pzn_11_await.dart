firstName() async {
  return 'Muhammad';
}

Future<String> lastName() async {
  return 'Abqary';
}

Future<String> sayHello(String name) async {
  return 'Helloww $name';
}

Future<void> say() async {
  var first = await firstName();
  var last = await lastName();
  var hello = await sayHello('$first $last');
  print(hello);
}

void main() async{
  say();

  var first = await firstName();
  print(first);
  print('Done');
}