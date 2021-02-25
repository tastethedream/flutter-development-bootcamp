# Intention Actions


## Wrapping widgets
- Place cursor over the element you want tp target

- Right click and select `wrap with center`
- This will allow you to access `flutter outline`
- In here you can wrap all elemets using the menu

## Deleting widgets

you can place the cursor over the emement and click the lightbulb to remove or move widget down

## Wrapping elements in padding

Below is an example to two side by side images wrapped in equal padding. You select the actual image to pad.

```
class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset('images/dice1.png'),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset('images/dice1.png'),
            ),
          ),
        ],
      ),
    );
  }
}
```

