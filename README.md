<div align="center">

<h1 style="color:#027DFD; font-family: 'Courier New', 'Courier', monospace; font-weight: 200;">{ PIPELINER }</h1>

[![](https://img.shields.io/github/v/release/ilexbor/pipeliner?style=for-the-badge&logo=github&color=181717&label=GitHub%20Release)](https://github.com/ilexbor/pipeliner)
[![](https://img.shields.io/pub/v/pipeliner.svg?style=for-the-badge&logo=dart&color=0553B1&label=Pub%20Release)](https://pub.dev/packages/pipeliner)
[![](https://img.shields.io/pub/dm/pipeliner?style=for-the-badge&logo=dart&color=0553B1&label=Pub%20Downloads)](https://pub.dev/packages/pipeliner)
![](https://img.shields.io/github/license/ilexbor/pipeliner?style=for-the-badge&color=042B59&label=license)

</div>

Effortlessly build and manage pipelines in Dart. 
Perfect for handling sequences of tasks or transforming data step-by-step.

## Table of contents

- [Compatibility](#compatibility)
- [Installation](#installation)
- [Usage](#usage)
  - [Api reference](#api-reference)
  - [Example](#example)
  - [Adding steps to the pipeline](#adding-steps-to-the-pipeline)
  - [Running the pipeline](#running-the-pipeline)
- [Changelog](#changelog)
- [Issues](#issues)
- [Contributing](#contributing)
- [License](#license)

## Compatibility

Pipeliner requires `Dart SDK` version `3.0.0 or later`.

## Installation

1. Add the package to your project by running:

   ```shell
   dart pub add pipeliner
   ```

2.	Import the package in your Dart file:
    
    ```dart
    import 'package:pipeliner/pipeliner.dart';
    ```

## Usage

### Api reference

The documentation is available at: [API Reference](https://pub.dev/documentation/pipeliner/latest/)

### Example

The Pipeliner package allows you to create pipelines where each step processes input and produces output.

Here’s a quick example:

```dart
final pipeline = Pipeliner.create(() {
  return 1;
})
.pipe((int value) {
  return (value + 1).toString();
})
.pipe((String value) {
  return int.parse(value) + 1;
});

final result = await pipeline.call();

print('Pipeline result: $result'); // Pipeline result: 3
```

### Adding steps to the pipeline

Use the `pipe` method to add processing steps:

```dart
Pipeliner.create(() => 0)
    .pipe((input) => input + 1)
    .pipe((input) => input * 2);
```

Each step can process data synchronously or asynchronously.

### Running the pipeline

To execute the pipeline, call its `call` method:

```dart
final result = await pipeline.call();
print('Pipeline result: $result');
```

## Changelog

For a full list of changes and updates, see the [CHANGELOG.md](CHANGELOG.md).

## Issues

If you encounter any issues or have suggestions for improvements, please [create an issue](https://github.com/ilexbor/pipeliner/issues/new/choose) on GitHub.

When reporting a bug or requesting a fix, please provide as much detail as possible to help understand the problem or idea.

Including the following information is highly appreciated:
- Steps to reproduce the issue
- Expected behavior
- Any error messages or logs
- Your environment (operating system, Dart version, etc.)

Your feedback is valuable and will help improve the package!

## Contributing

Contributions are welcome!  
Please [fork this repository](https://github.com/ilexbor/pipeliner/fork) and [submit pull requests](https://github.com/ilexbor/pipeliner/pulls).

By participating in this project, you agree to abide by our [Code of Conduct](CODE_OF_CONDUCT.md).

## License

This project is licensed under the [BSD-3-Clause License](LICENSE).

---

<div align="center">
  <h2 style="color:#0553B1;">
    Developed with 💙 by <a href="https://github.com/ilexbor" style="text-decoration:none; color:#027DFD;" onmouseover="this.style.color='#0553B1'" onmouseout="this.style.color='#027DFD'">ilexbor</a>
  </h2>
</div>

