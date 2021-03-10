# Handy Hints

## Overflow error

- Check the run console for the offending widget
- Click on it to take you to the right line of code
- Wrap that widget in another widget called `SingleChildScrollView`


## Drop down menus

- Add a starting value so the user can see there is a list there

```
 Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: DropdownButton<String>(
                value: 'USD',
                items: [
                  DropdownMenuItem(
                    child: Text('USD'),
                    value: 'USD',
                  ),
                  DropdownMenuItem(
                    child: Text('EUR'),
                    value: 'EUR',
                  ),
                  DropdownMenuItem(
                    child: Text('GBP'),
                    value: 'GBP',
                  ),
                ],
                onChanged: (value) {
                  print(value);
                }),
          ),
        ],
      ),
    );
  }
}
```


