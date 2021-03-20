
# Provider

 - https://pub.dev/packages/provider/install

 - in pubspec.yaml

 ` provider: ^5.0.0`

 - in file

 `import 'package:provider/provider.dart';`

 - Put the provider as high up the widget tree as needed

 - wrap code in a `Provider` widget

 - Specify your data type

 `Provider<String>`

 - Add the Provider builder

 ```builder: (context) {
   return data:
   }
```

or

`builder: (context) => data,`

- You can now use this where ever you need to

`return Text(Provider.of<String>(context));`

## Change Notifier

```
class Data extends ChangeNotifier {
  String data ='somedata'; 

  void changeString(String newString) {
    data = newString;
    notifyListeners();
  }
}
```



