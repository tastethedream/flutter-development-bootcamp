# Listening for data from Firebase using Streams

- Set up the stream to allow the app to listen for changes in the database

```
  void messagesStream() async {
    try {
      await for (var snapshot
          in _firestore.collection('messages').snapshots()) {
        for (var message in snapshot.docs) {
          print(message.data());
        }
      }
    } catch (e) {
      print(e);
    }
  }
```

- Call the stream

`  messagesStream();`

## Dart Streams

- Allows you to access bits of data as they get added to the stream instead of getting eveything in one go.


## StreamBuilder

### Display ther data simply

- Before thinking about displaying the data in a  user friendly way, just get it ti display in the simplest way possible

- `StreamBuilder` turns snapshots of data into widgets each time new data comes through  

- This will display and update inside a colum

```
StreamBuilder(
    stream: _firestore.collection('messages').snapshots(),
    builder: (context, snapshot) {
                  List<Text> messageWidgets = [];
     if (snapshot.hasData) {
        final messages = snapshot.data.docs;
        for (var message in messages) {
          final messageText = message.data()['text'];
          final messageSender = message.data()['sender'];
           final messageWidget =
                          Text('$messageText from $messageSender');
          messageWidgets.add(messageWidget);
       }
    }
   return Column(
       children: messageWidgets,
        );
     }),
