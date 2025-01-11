part of '../pipeliner_library.dart';

abstract interface class Pipeliner<INPUT, OUTPUT> implements PipelinerContract<INPUT, OUTPUT> {
  static Pipeliner<void, OUTPUT> create<OUTPUT>(PipelinerInitializerFunc<OUTPUT> initializer) {
    final result = PipelinerRootBody<OUTPUT>(initializer);
    return result;
  }
}
