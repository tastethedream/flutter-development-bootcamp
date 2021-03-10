# Dart Loops

## For Loops

`for (int i = 0; i<7; i++>) {
  //Do something for 7 - 0 times}`


###  Bottle of beer excercise

```
main() {

  for ( int i = 99; i > 0; 1--) {

print0('$i bottles of beer on the wall, $i bottles of beer. Take one down and pass it around, $(i-1) bottles of beer on the wall.')
   }
  }  
```

## For In Loops

`for (string fruit in fruits) {
  //do something with fruit, 
    //fruit.length times
    }`

### Lottery Check 

```
List<int> winningNumbers = [12, 6, 34, 22, 41, 9];


void main() {

  	List<int> ticket1 = [45, 2, 9, 18, 12, 33];
  	List<int> ticket2 = [41, 17, 26, 32, 7, 35];


    checkNumbers(ticket1);

}

void checkNumbers(List<int> myNumbers) {
  //Write your code here.

  int matches = 0;

  for (int myNum in myNumbers) {
      for(int winningNum in winningNumbers ) {
        if (winningNum == myNum) {
         matches++;

        }
      }
  }

    print('You have $matches matching numbers');


}
```
- See bitcoin project for great example of drop down menu using a for in loop



