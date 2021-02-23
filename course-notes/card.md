# Cards

- Card is a pre built widget class 
- Card does not use padding
- The padding class can be added as a parent instead
- `alt` + `enter` on the element and select `wrap with padding`

```
Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: Padding(
                padding: EdgeInsets.all(25.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.email_outlined,
                      color: Colors.teal,
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      'myemail@gmail.com',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
```
### Dividers

```
 SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
```


