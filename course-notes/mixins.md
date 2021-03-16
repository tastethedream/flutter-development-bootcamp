
# Dart Mixins

- Mixins are a way of using a class's code in multiple class hierarchies.

- Use the keyword `with`

```
class Musician extends Performer with Musical {
  // ···
}

class Maestro extends Person
    with Musical, Aggressive, Demented {
  Maestro(String maestroName) {
    name = maestroName;
    canConduct = true;
  }
}
```

- To implement a mixin, create a class that extends Object and declares no constructors. Unless you want your mixin to be usable as a regular class, use the mixin keyword instead of class. For example:

```
mixin Musical {
  bool canPlayPiano = false;
  bool canCompose = false;
  bool canConduct = false;

  void entertainMe() {
    if (canPlayPiano) {
      print('Playing piano');
    } else if (canConduct) {
      print('Waving hands');
    } else {
      print('Humming to self');
    }
  }
}
```

- Sometimes you might want to restrict the types that can use a mixin. For example, the mixin might depend on being able to invoke a method that the mixin doesn’t define. As the following example shows, you can restrict a mixin’s use by using the on keyword to specify the required superclass:

```
class Musician {
  // ...
}
mixin MusicalPerformer on Musician {
  // ...
}
class SingerDancer extends Musician with MusicalPerformer {
  // ...
}
```
- In the preceding code, only classes that extend or implement the Musician class can use the mixin MusicalPerformer. Because SingerDancer extends Musician, SingerDancer can mix in MusicalPerformer.
