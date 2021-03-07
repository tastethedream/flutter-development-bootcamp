# Stateful Widget Lifecycle Methods

`Future` - like promises

## Stateless widgets

- Like lego blocks
- cannot be changed
- You have to destroy and create a new one each timw you make a change
- Simple lifecycle `build method` only

## Stateful Widgets

- Can be combined
- You can track their state using a `state object` 
- State objects keep track of the variables, properties, configuration etc.
- Variables can be changed using `set state`
- More lifecycle methods
  - `initState()`triggered when state is initialised
  - `build()` 
  - `deactivate()` called when the stateful widgets gets destroyed.

```
class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();

    getLocation();
  }

  void getLocation() async {
    Position position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
    print(position);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
```

