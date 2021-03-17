# Firebase

## Creating A New Firebase Project


- https://firebase.google.com/

- Login with your google account

- Go to console (top right of screen)

- Create a project

- Add a project name

- Agree T&C's

- Continue

- Add Google analytics if required

- Create Project


## Project Setup

### Android

- Click Android symbol

- Get AndroidPackage name from app level build gradle file usually called `applicationId`

  android -> app -> build.gradle -> applicationId

  - Register app

  - Download google-services.json (only do this once)

  - Open File manager and drag the json file into the app folder of your project,

  - Refactor

  - Next

  - android -> build.gradle

  - Add classpath to dependencies

    `classpath 'com.google.gms:google-services:4.3.5'

 - android -> app -> build.gradle

- Add dependencies
  
  follow insructions on screen and add plugins right at bottom after last }

- Next

- Continue to console

# Registering Users

see flash-chat-flutter for working example of how to add new users and login existing users

- In firebase select build -> authentication -> signin method to select which type you need for your app.

- Each time you add a new user you should see them in Authentication -> Users


