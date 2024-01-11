Future<String> name() {
  return Future.value('Muhammad Althaaf Abqary Ganteng');
}

void main() {
  name()
      .then((value) => value.split(" ")) // Future<List<String>>
      .then((value) => value.reversed) // Future<Iterable<String>>
      .then((value) => value.map((e) => e.toUpperCase()))
      .then((value) => print(value));

  print('Tafta ganteng');
}