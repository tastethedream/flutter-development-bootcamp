# Intro to flutter Section 6 

## Layout widgets

### Container widgets

- Like a div
- (flutter docs)(www.flutter.dev/docs)
- Containers with no children try to be as big as possible(if you only jave 1 container with no children it will cover the entire screen)

### Safe Area

- Will ensure any elements do not fall inside bevels, interactive areas etc.

- Place cursor over container and press `alt` and `enter` and select `wrap widget`
- This sets the original container as the child of the new widget
- rename the widget `SafeArea`

### Margins

- Deals with space on the outside of the widget

- `margin: EdgeInsets` then select which you  wish to use eg:

```
 margin: EdgeInsets.fromLTRB(30.0, 10.0, 50.0, 20.0),
 ```

 ### Padding

- DEals with space on the inside of the widget

 `padding: EdgeInsets.all(20.0)`

## Columns and rows

- Can have multiple children
- `mainAxisAlignment` to space vertically
- `crossAxisAlignment` to space horizontally

- To move all containers to the right create an empty container with infinity width when using cross axis alignment.end

```
Container(
                width: double.infinity,
         )
```

 - To have containers take up the entire width of screen:-

 `crossAxisAlignment: CrossAxisAlignment.stretch,`

### Sized Box

- Will give you space between containers

```
      Container(
                height: 100.0,
                width: 100.0,
                color: Colors.white,
                child: Text('Container 1'),
              ),
              SizedBox(
                height: 20.0,
```



                





