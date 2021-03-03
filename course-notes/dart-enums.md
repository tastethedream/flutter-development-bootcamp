# Dart Enums

- Enums = enumeration = The action of establishing the number of something.


- Enums are reallt useful when you have more than one option for a property


`enum EnumName {typeA, typeB, typeC}`

`EnumName.typeC`


- Enums have capital letters like classes


```
enum Gender {
  male,
  female,
}
```
```
  void updateColour(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      if (maleCardColour == inactiveCardColour) {
        maleCardColour = activeCardColour;
        femaleCardColour = inactiveCardColour;
      } else {
        maleCardColour = inactiveCardColour;
      }
    }
    if (selectedGender == Gender.female) {
      if (femaleCardColour == inactiveCardColour) {
        femaleCardColour = activeCardColour;
        maleCardColour = inactiveCardColour;
      } else {
        femaleCardColour = inactiveCardColour;
      }
    }
  }
```  

