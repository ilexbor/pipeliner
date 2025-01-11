part of '../pipeliner_library.dart';

/// Represents a node in a pipeline.
///
/// Each node processes input data and produces output data.
/// Nodes can be linked to form a chain.
abstract interface class PipelinerContract<INPUT, OUTPUT> {
  /// Processes the data for this node.
  ///
  /// Returns the result as `OUTPUT`.
  /// The result can be synchronous (`OUTPUT`) or asynchronous (`Future<OUTPUT>`).
  FutureOr<OUTPUT> call();

  /// The previous node in the pipeline.
  ///
  /// Links this node to the previous one.
  /// Used internally for building pipeline chains.
  // ignore: unused_element
  Pipeliner<dynamic, INPUT>? get _previousPipeliner;
}
