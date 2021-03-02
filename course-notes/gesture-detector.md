# The Gesture Detector Widget

- This widget can detect various types of user interaction, tap, long press etc.

- Does not effect styling in anyway (unlike flatButton for example)

```
  Expanded(
      child: GestureDetector(
        onTap: () {
           setState(() {
             updateColour(1);
   });
 },
 ```


 - See bmi-calculator-flutter for a great example of this


