import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  var data = 'Altasdashaaf';

  setUp(() => data = 'Althaaf');
  
  tearDown(() => print(data));

  group('Test String', () {
    test('Test String first', () {
      data = '$data ganteng';
      expect(data, equals('Althaaf ganteng'));
    });

    test('Test String second', () {
      data = '$data gege';
      expect(data, equals('Althaaf gege'));
    });
  });
}