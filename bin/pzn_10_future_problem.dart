Future<String> firstName() async {
  return 'Muhammad';
}

Future<String> lastName() async {
  return 'Abqary';
}

Future<String> sayHello(String name) async {
  return 'Helloww $name';
}

void main() {
  firstName()
      .then((firstName) {
        return lastName().then((lastName) {
              var fullName = '$firstName $lastName';
              return sayHello(fullName);
        });
  }).then((value) => print(value));

  print('Done');
}