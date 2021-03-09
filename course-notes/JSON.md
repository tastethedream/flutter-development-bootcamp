# JSON Parsing and Dynamic Types

- `import 'dart:convert';`

- `jsonDecode(source)[key][key]`

- `var longitude = jsonDecode(data)['coord']['lon'];`

- `var weatherDescription = jsonDecode(data)['weather'][0]['description'];` The `[0]` takes you to the first position in the list now you are inside you can use the keys eg. 'description`.

```
 var decodedData = jsonDecode(data);

      double temperature = decodedData['main']['temp'];
      int condition = decodedData['weather'][0]['id'];
      String city = decodedData['name'];

      print(city);
      print(condition);
      print(temperature);
```      
