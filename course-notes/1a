# Section 7 Dicee-Building apps with state

## A stateful dice app

### Overflow

- If an element is too large for the screen you get hacienda bars.

- You can target the `width` element but this is not ideal when rotating screen or if users have smaller/larger devices.

### Expanded Class

This widget allows the element to take up as much space as possible but not more. Wrap around the element like so

```
class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Image(
            image: AssetImage('images/dice1.png'),
          ),
        )
      ],
    );
  }
} 
```
### Flex

This property will allow you to change the amount of space one expanded widget has over another.

The code below allows the widget on the right to hace twice the space of the widget on the left.

```
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Image(
            image: AssetImage('images/dice1.png'),
          ),
        ),
        Expanded(
          flex: 1,
          child: Image(
            image: AssetImage('images/dice1.png'),
          ),
        )
      ],
    );
  }
}
```

### Image.asset constructor

Short hand for specifying the images

```
class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Image.asset('images/dice1.png'),
        ),
        Expanded(
          flex: 1,
          child: Image.asset('images/dice1.png'),
        ),
      ],
    );
  }
}
```

