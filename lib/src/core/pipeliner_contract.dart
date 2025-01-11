part of '../pipeliner_library.dart';

abstract interface class PipelinerContract<INPUT, OUTPUT> {
  FutureOr<OUTPUT> call();

  // Defined for open source developers
  // ignore: unused_element
  Pipeliner<dynamic, INPUT>? get _previousPipeliner;
}
