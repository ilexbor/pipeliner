part of '../pipeliner_library.dart';

extension PipelinerExtensions<INPUT> on Pipeliner<dynamic, INPUT> {
  Pipeliner<INPUT, OUTPUT> pipe<OUTPUT>(PipelinerHandlerFunc<INPUT, OUTPUT> handler) {
    final previousPipeline = this;
    return PipelinerBody<INPUT, OUTPUT>(previousPipeline, handler);
  }

// Pipeline<INPUT, OUTPUT> asyncPipe<OUTPUT>(PipelineHandler<INPUT, OUTPUT> handler) {
//   final previousPipeline = this;
//   return PipelineBodyAsync<INPUT, OUTPUT>(previousPipeline, handler);
// }
}
