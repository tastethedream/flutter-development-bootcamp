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



