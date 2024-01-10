@Skip('THIS UNIT TEST STILL BROKEN')

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
    });
  });
}