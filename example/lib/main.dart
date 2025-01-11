import 'dart:async';
import 'dart:io';

import 'package:pipeliner/pipeliner.dart';

Future<void> main() async {
  final pipeline = Pipeliner.create(init).pipe(nextString).pipe(nextInt).pipe(nextString);
  final result = await pipeline.call();
  stdout.writeln('result = $result');
}

int init() {
  return 1;
}

String nextString(int value) {
  return (value + 1).toString();
}

int nextInt(String value) {
  return int.parse(value) + 1;
}
