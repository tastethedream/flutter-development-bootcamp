# Introduction To Flutter

## Section 3 How to create flutter apps from scratch(I Am Rich)
### Creating a new flutter App

- file
- new flutter project
- flutter application
import 'package:flutter/material.dart';

// The main function is the starting point for all Flutter apps
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('I Am Rich'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Image(image: AssetImage('images/diamond.png')),
        ),
      ),
    ),
  );
}
- give your project a name
- leave other fields as they are unless you want to change project location
- set package name if you do not have a domain name tryt using your ownname.com
- finish

### Starting Code

`void main()` is the starting point for all flutter apps


```
void main() {
  runApp(
    MaterialApp(
      home: Center(child: Text('Hello World')),
    ),
  );
}
```

`//` for comments

### Scaffolding a material app

- hover over widgets right click and select `show context actions`
- Select `wrap center` to sidplay that element/widget in the centre of the screen


```
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('I Am Rich'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Image(
            image: NetworkImage(
                'https://images.address'),
          ),
        ),
      ),
    ),
  );
}
```

### Images and Assets

- right click on project folder and create a new directory `images`
- Download your image and move it the images dirctory
- Open config file [pubspec.yaml] 
- find and uncomment the assets section, hightlight the text and `ctrl` + `/`
- Add your image and location or just location if there will be more than one image used `- images/`
- save and click `pub get`
**yaml comments start with #**
**Be careful of indentations**

- To add the image to your app
```
 child: Image(image: AssetImage('images/diamond.png')),
```

### App Icons

#### Create the icons

- www.appicon.co
- drag in your image
- select the icons you wish to generate
- click generate to download zip file of images `AppIcons/zip`

#### Move the assets into your project

##### Android

- In project files select the `android` directory
- `app`.....`src`....`main`....`res`
- select `res` right click `show in files`
- have this side by side with the downloaded icons
- delete all mipmap files from the `res` dirctory
- drag all mipmap files from the downloaded folder into the res folder

##### IOS

- In project select  `ios` directory
- `Runner` right click `show in files`
-`assets.xcassets` move to trash
- drag `assests.xcassets` from downloaded insons into `runner`
- 


