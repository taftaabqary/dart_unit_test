@OnPlatform({
  'mac-os' : Skip('this test is not working in Windows')
})

import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

int sum(int a, int b) {
  return a + b;
}

void main() {
  group('Test sum()', () {
    test('positive', () {
      expect(sum(1, 1), equals(2));
    });

    test('negative', () {
      expect(sum(-10, 8), equals(-2));
    }, onPlatform: {
      'windows' : Skip('This test is not working in Windows')
    });
  });
}