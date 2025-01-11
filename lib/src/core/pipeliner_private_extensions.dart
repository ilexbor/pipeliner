part of '../pipeliner_library.dart';

extension PipelinerPrivateExtensions<INPUT, OUTPUT> on PipelinerContract<INPUT, OUTPUT> {
  Pipeliner<dynamic, INPUT>? get previousPipeline => _previousPipeliner;
}
