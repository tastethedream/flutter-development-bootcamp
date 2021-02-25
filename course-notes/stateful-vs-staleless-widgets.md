# Stateful vs stateless widgets

- `stful` to create a stateful widget

```
class  extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
```

## Changing the state

```
 Expanded(
   child: FlatButton(
     onPressed: () {
       setState(() {
           leftDiceNumber = 6;
        });
      },
      child: Image.asset('images/dice$leftDiceNumber.png')
```

## Randomising the button

- Import the maths library

`import 'dart:math';`

`leftDiceNumber = Random().nextInt(6) + 1;`
We add the 1 to avoid the choice ever being zero



