# Detecting User Interaction With Flutter Buttons

## Flat Button

1. Choose the widget that you want to wrap the button around.

2. Click the lightbul and `wrap with new widget`

3. Change widget to `FlatButton`

4. Add the comma after the new widget

5. This may alter the padding etc use inspector 

```
  Expanded(
    child: FlatButton(
      child: Image.asset('images/dice1.png'),
    ),
 ),
```

## On Pressed

Will tell the button what to do when it is pressed

## Void Callbacks

Have no arguements and return no data. Just like an **anonymous function** 

`()` - indicates no arguements or data returned

`{}` -  everyhing that happens when the button is pressed will live inside these curly braces

```
Expanded(
  child: FlatButton(
    onPressed: () {},
    child: Image.asset('images/dice1.png'),
   ),
),
```

```
class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                print('left button got pressed');
              },
              child: Image.asset('images/dice1.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                print('right button got pressed');
              },
              child: Image.asset('images/dice1.png'),
            ),
          ),
        ],
      ),
    );
  }
}
```













