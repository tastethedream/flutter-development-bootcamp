# Fonts

- Download fonts at (www.fonts.google.com)
- create new dir in your project `fonts`
- move the font file and license in the fonts folder
- change `pubspec/yaml`

```
fonts:
    - family: Pacifico
      fonts:
      - asset: fonts/Pacifico-Regular.ttf
```
- careful of the indentations

- click pub get

- Add new font family to your code

```
Text(
              'Dawn M Rose',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
```
- Cold restart to see results


