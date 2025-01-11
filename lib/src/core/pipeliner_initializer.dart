part of '../pipeliner_library.dart';

/// A function type for initializing a pipeline.
///
/// This function produces the initial [OUTPUT] for the pipeline.
/// It can return a value synchronously (`OUTPUT`) or asynchronously (`Future<OUTPUT>`).
///
/// Example:
/// ```dart
/// int initializer() async {
///   return 123;
/// }
///
/// final pipelineInitializer = PipelinerInitializerFunc<int>(initializer);
///
/// final pipeline = Pipeliner.create(pipelineInitializer);
/// ```
typedef PipelinerInitializerFunc<OUTPUT> = FutureOr<OUTPUT> Function();
