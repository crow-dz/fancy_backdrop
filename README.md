# fancy_backdrop

[![pub package](https://img.shields.io/pub/v/fancy_backdrop.svg)](https://pub.dev/packages/fancy_backdrop)
![Libraries.io dependency status for latest release](https://img.shields.io/librariesio/release/pub/fancy_backdrop)
![License](https://img.shields.io/github/license/crow-dz/fancy_backdrop)


# Introduction

fancy_backdrop will add a dimmed layer over your application with spinner.

# Screenshots

<img src="https://raw.githubusercontent.com/crow-dz/hello_word/master/asstes/caseOne.gif" height="400px" alt="Screenshot"/>
<img src="https://raw.githubusercontent.com/crow-dz/hello_word/master/asstes/caseTwo.gif" height="400px" alt="Screenshot"/>

# Installation

```yaml
dependencies:
  fancy_backdrop: 0.0.1
```

```dart
import 'package:fancy_backdrop/fancy_backdrop.dart';
```

# Example


```dart
FancyBackdrop(
        open: isReady, // bool required
        handleClose: false, // bool optional 
        child:YOUR_WIDGET() // widget required
)
```
# Next Goals
 
 [x] Adding new loading animations


___


## License


[MIT License](https://github.com/crow-dz/fancy_backdrop/blob/master/LICENSE).

