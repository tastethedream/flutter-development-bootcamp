# Dart Constructors

# Classes can have :-


## Property

- The instance variables that live inside the class

## Constructor

- Tells the class what we want to initialise the values of the properties to

## Method

- The functions inside the class

```
void main() {

human jenny = Human(height: 15, weight: 3.5);
print(jenny.height);

human james = Human(height: 25, weight: 4.5);
print(james.height);

}

class Human {
  double height;
  double weight;

  Human({this.height, this.weight})};
}
```  
