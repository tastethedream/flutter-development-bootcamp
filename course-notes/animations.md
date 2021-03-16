# Flutter Hero Animations

- Usually take place on screen transitions
- The element must be present on both pages
- you will need
   
    1. 2 x widgets
    2. A shared tag property
    3. Navigator based screen transitions

```
Hero(
   tag: 'logo',
   child: Container(
   height: 200.0,
   child: Image.asset('images/logo.png'),
    ),
  ),
```

Place the code in both or all  pages/ screens using the height property to determine the size of the image.

# Custom Animations


- you will need
   
    1. A Ticker
    2. Animation controller
    3. An animation value

## Ticker

- Counts and ticks the animation along so that it changes at correct moment

## Animation Controller

- The manager of the animation
- Tells the animation to start, stop, lopp etc.


## Animation value

- Does the actual animating
- Allows you to change the height, size, color etc of the component

```
class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
      upperBound: 90.0,
    );

    controller.forward();

    controller.addListener(() {
      setState(() {});
      print(controller.value);
    });
```

```
 Hero(
   tag: 'logo',
   child: Container(
   child: Image.asset('images/logo.png'),
   height: controller.value,
    ),
 ),
 ```

## Curved Animation Class

- Allows you to change the animation value along a curve

- You cannot have an upper bound greater than one.

- When using `animation.value` you can multiply by 100 to be able to see then changes on screen


```
class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
      upperBound: 1.0,
    );

    animation = CurvedAnimation(parent: controller, curve: Curves.decelerate);
    controller.forward();

    controller.addListener(() {
      setState(() {});
      print(animation.value);
    });
  }
```
```
Hero(
  tag: 'logo',
  child: Container(
  child: Image.asset('images/logo.png'),
  height: animation.value * 90,
   ),
 ),

 ```
## Add Status Listeners

 - If you know the staus of the listener you can tap into it 

 ```
     animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse(from: 1.0);
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });
``` 

This will allow the animation to bounce big anf small in a continuos loop

- Do not forget to dispose this to stop it going forever

```
 @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
```  
 
## Tween Animations

 - Animations that go inbetween values

```
animation =
        ColorTween(begin: Colors.red, end: Colors.blue).animate(controller);
```

```
@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,

```

## Prepackaged FLUTTER ANIMATIONS

https://pub.dev/packages?q=animate


`animated_text_kit 4.0.0 `
