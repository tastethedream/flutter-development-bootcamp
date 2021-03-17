# Saving Data into Cloud Firestore

Form the menu left hand side

- Build -> Firestore -> create database

- start in test mode

- Select Location

- Database will now be created and you will be taken to the Cloud Firestore page

- Start Collection

- Type what you wish to name the database into `collection ID`

- Create your fields

  - name
  - type
  - value

- To add further fields click the +

- You may need to add a document ID -use auto generate


# Saving Data From Your Application

- `import 'package:cloud_firestore/cloud_firestore.dart';`

- Save the user input

    ` String messageText;`

- Set the value of the text field 

  ```
   child: TextField(
      onChanged: (value) {
      messageText = value;
   },
   ```

- Send the users data to Firestore

  - Create a Firestore instance 

  ` final _firestore = FirebaseFirestore.instance;`

  - Use it in the onpressed

  ```
     onPressed: () {
 
       _firestore.collection('messages').add(
        {'text': messageText, 'sender': loggedInUser.email});
                    },
 ```


