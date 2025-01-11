part of '../pipeliner_library.dart';

typedef PipelinerHandlerFunc<INPUT, OUTPUT> = FutureOr<OUTPUT> Function(INPUT input);
