# Mi Card project

## Getting the starter code

(Github repo)(https://github.com/londonappbrewery/mi_card_flutter)

- click green code button
- copy the link
- Open android studio
- On the welcome screen, select `get from version control`
- Select Git as the provider
- Paste in the github URL that you copied
- Select where you wish the project to be stored locally
- Click clone
- Tools.....flutter.....pub get
- Install any dependencies

## Hot Reload and the stateless widget

- `stless` will create a new stateless widget

- Give the widget a name between `class` and `extends`

- cut the `materialApp` and paste it  or create it from scratch and replace the `container`

- Add the name of your app inside the` runApp` function

```
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        home: Scaffold(
        backgroundColor: Colors.teal,
        body: Container(),
    );
  }
}

```
- Stop and re-run app to enable hot reload

## Hot Restart

- Will reset the state of your app

