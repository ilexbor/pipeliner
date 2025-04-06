// ignore_for_file: document_ignores

part of '../pipeliner_library.dart';

interface class PipelinerRootBody<OUTPUT> implements Pipeliner<void, OUTPUT> {
  PipelinerRootBody(this._initializer);

  final PipelinerInitializerFunc<OUTPUT> _initializer;

  // Defined for open source developers
  // ignore: unused_element
  Pipeliner<dynamic, void>? get _previousPipeliner => null;

  FutureOr<OUTPUT> call() {
    return _initializer.call();
  }
}

interface class PipelinerBody<INPUT, OUTPUT> implements Pipeliner<INPUT, OUTPUT> {
  PipelinerBody(
    this._previousPipeliner,
    this._handler,
  );

  final Pipeliner<dynamic, INPUT> _previousPipeliner;

  // ignore: unsafe_variance
  final PipelinerHandlerFunc<INPUT, OUTPUT> _handler;

  // Defined for open source developers
  Pipeliner<dynamic, INPUT>? get previousPipeline => _previousPipeliner;

  FutureOr<OUTPUT> call() async {
    final input = await _previousPipeliner.call();
    final result = await _handler.call(input);
    return result;
  }
}

// interface class PipelineBodyAsync<INPUT, OUTPUT> implements Pipeline<INPUT, OUTPUT> {
//   PipelineBodyAsync(
//     this._previousPipeline,
//     this._handler,
//   );
//
//   final Pipeline<dynamic, INPUT> _previousPipeline;
//   final PipelineHandler<INPUT, OUTPUT> _handler;
//
//   Pipeline<dynamic, INPUT>? get previousPipeline => _previousPipeline;
//
//   FutureOr<OUTPUT> call() async {
//     final input = await _previousPipeline.call();
//     final future = _handler.call(input);
//     return future;
//   }
// }
