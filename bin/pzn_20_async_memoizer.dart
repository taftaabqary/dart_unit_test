import 'package:async/async.dart';

Future<String> getData(){
  return Future.delayed(Duration(seconds: 2), () {
    print('Clculate get Data');
    return 'Get Data';
  });
}

void main() async {
  final asyncMemoizer = AsyncMemoizer();

  String result1 = await asyncMemoizer.runOnce(() => getData());
  print(result1);

  String result2 = await asyncMemoizer.runOnce(() => getData());
  print(result2);
}