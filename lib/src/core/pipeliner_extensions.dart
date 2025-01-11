part of '../pipeliner_library.dart';

/// Extension methods for working with pipeline.
extension PipelinerExtensions<INPUT> on Pipeliner<dynamic, INPUT> {
  /// Adds a new step to the pipeline.
  ///
  /// The [handler] function processes [INPUT] data and produces [OUTPUT] data.
  /// Returns a new pipeline with the added processing step.
  ///
  /// Example:
  /// ```dart
  /// final pipeline = Pipeliner.create(() => 42)
  ///     .pipe((int input) => input.toString())
  ///     .pipe((String input) => input.length);
  /// ```
  Pipeliner<INPUT, OUTPUT> pipe<OUTPUT>(PipelinerHandlerFunc<INPUT, OUTPUT> handler) {
    final previousPipeline = this;
    return PipelinerBody<INPUT, OUTPUT>(previousPipeline, handler);
  }

// Pipeline<INPUT, OUTPUT> asyncPipe<OUTPUT>(PipelineHandler<INPUT, OUTPUT> handler) {
//   final previousPipeline = this;
//   return PipelineBodyAsync<INPUT, OUTPUT>(previousPipeline, handler);
// }
}
