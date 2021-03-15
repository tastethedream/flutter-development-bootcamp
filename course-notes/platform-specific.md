# Building Platform Specific UI


- `import 'dart:io' show Platform;` library to differentiate between platforms



```
 Widget getPicker() {
    if (Platform.isIOS {
      return iosPicker();
    } else if (Platform.isAndroid) {
      return androidDropdown();
    }
 }
 ```
Or remove getPicker() and use a ternary operator instead


 ```
  Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: Platform.isIOS ? iosPicker() : androidDropdown(),
          ),
        ],
```






