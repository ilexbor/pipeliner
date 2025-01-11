part of '../pipeliner_library.dart';

/// A pipeline for processing data.
///
/// The pipeline consists of a chainable structure where each step processes
/// [INPUT] data and produces [OUTPUT] data. The pipeline starts with an
/// initializer function and can be extended with additional processing steps.
abstract interface class Pipeliner<INPUT, OUTPUT> implements PipelinerContract<INPUT, OUTPUT> {
  /// Creates a new pipeline.
  ///
  /// The [initializer] function generates the initial [OUTPUT] of the pipeline.
  ///
  /// Example:
  /// ```dart
  /// final pipeline = Pipeliner.create(() => 123);
  /// ```
  static Pipeliner<void, OUTPUT> create<OUTPUT>(PipelinerInitializerFunc<OUTPUT> initializer) {
    final result = PipelinerRootBody<OUTPUT>(initializer);
    return result;
  }
}
