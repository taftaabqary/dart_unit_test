import 'package:async/async.dart';

Future<String> getData(){
  return Future.delayed(Duration(seconds: 2), () {
    print('Clculate get Data');
    return 'Get Data';
  });
}

void main() async {
  final asyncCache = AsyncCache<String>(Duration(seconds: 10));

  String result1 = await asyncCache.fetch(() => getData());
  print(result1);

  String result2 = await asyncCache.fetch(() => getData());
  print(result2);
}