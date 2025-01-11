part of '../pipeliner_library.dart';

/// A function type for handling data in a pipeline step.
///
/// This function processes the [INPUT] data and produces [OUTPUT] data.
/// It can return the result either synchronously (`OUTPUT`) or asynchronously (`Future<OUTPUT>`).
///
/// Example:
/// ```dart
/// String handler(int input) {
///   return (input + 1).toString();
/// }
///
/// final pipelineHandler = PipelinerHandlerFunc<int, String>(handler);
///
/// final pipeline = Pipeliner.create(() => 123).pipe(handler);
/// ```
typedef PipelinerHandlerFunc<INPUT, OUTPUT> = FutureOr<OUTPUT> Function(INPUT input);
