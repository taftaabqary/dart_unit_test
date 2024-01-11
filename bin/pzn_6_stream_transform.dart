Stream<int> numbers() {
  return Stream.fromIterable([1,2,3,4,5,6,7,8,9,10]);
}

void main() {
  numbers()
      .where((event) => event % 2 == 0)
      .map((event) => event * 10)
      .map((event) => event * 10)
      .listen((event) {
        print('Genap : $event');
  });

  print('Done');
}