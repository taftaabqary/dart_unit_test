import 'package:test/test.dart'; 

Future<String> getName() async{
  return 'Muhammad Althaaf';
}

void main(){
  test('Future Test', () async {
    final name = await getName();
    expect(name, 'Muhammad Althaaf');
  });
}