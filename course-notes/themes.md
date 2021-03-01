# Flutter Themes

- Custom colour themes and styling

- https://flutter.dev/docs/cookbook

- `theme: ThemeData()`

- Dark theme

`theme: ThemeData.dark(),`

## Create your own theme

### Main elements of the page

-` primaryColor: Colors.red`

will change the colour of the app bar only

- `accentColor:`

will change the accent colours

- To use custom colours rather than the material colours

`ThemeData(primaryColor: Color(0xff0A0E21),`

The `oxff` indicates the opacity of the colour. If coping over a hex code delete the #.

- To change the main body of the page use:-

`  scaffoldBackgroundColor: Color(0xff0A0E21),`

- To customise an existing theme

```
  theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0A0E21),
        scaffoldBackgroundColor: Color(0xff0A0E21),
      ),
```      




