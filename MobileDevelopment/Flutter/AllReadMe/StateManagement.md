

- [StateManagement](#statemanagement)
  - [Ephemeral](#ephemeral)
  - [App State](#app-state)
- [Explore More :construction:](#explore-more-construction)

# StateManagement
Managing state in an application is one of the most important and necessary process in the life cycle of an application.

Let us consider a simple shopping cart application.

* User will login using their credentials into the application.

* Once user is logged in, the application should persist the logged in user detail in all the screen.

* Again, when the user selects a product and saved into a cart, the cart information should persist between the pages until the user checked out the cart.

* User and their cart information at any instance is called the state of the application at that instance.



<p align="center"> 
     <img width="400" height="250"  src="/PlayGround/ResourcesFiles/Flutter_Dart/StateManagement_.gif" alt="Flutter StateManagement Demo">
  </p>


As you explore Flutter, there comes a time when you need to share application state between screens, across your app. There are many approaches you can take, and many questions to think about.



> Flutter is declarative. This means that Flutter builds its user interface to reflect the current state of your app:

<p align="center"> 
     <img width="700" height="250"  src="/PlayGround/ResourcesFiles/Flutter_Dart/flutter_declarative-UI.png" alt="Flutter StateManagement Demo">
  </p>


When the state of your app changes (for example, the user flips a switch in the settings screen), you change the state, and that triggers a redraw of the user interface. There is `no imperative` changing of the UI itself (like widget.setText)—you change the state, and the UI rebuilds from scratch.



> In the broadest possible sense, the state of an app is everything that exists in memory when the app is running. This includes the app’s assets, all the variables that the Flutter framework keeps about the UI, animation state, textures, fonts, and so on. While this broadest possible definition of state is valid, it’s not very useful for architecting an app.

First, you don’t even manage some state (like textures). The framework handles those for you. So a more useful definition of state is `whatever data you need in order to rebuild your UI at any moment in time`. Second, the state that you do manage yourself can be separated into two conceptual types: ephemeral state and app state.




A state management can be divided into two categories based on the duration the particular state lasts in an application.

* **Ephemeral** − Last for a few seconds like the current state of an animation or a single page like current rating of a product. Flutter supports its through `StatefulWidget`.

* **app state** − Last for entire application like logged in user details, cart information, etc., Flutter supports its through `scoped_model`.


## Ephemeral

Ephemeral state (sometimes called `UI state` or `local state`) is the state you can neatly contain in a single widget.

`Other parts of the widget tree seldom need to access this kind of state`. There is no need to serialize it, and it doesn’t change in complex ways.

**In other words**, there is no need to use state management techniques (ScopedModel, Redux, etc.) on this kind of state. All you need is a StatefulWidget.


```
class MyHomepage extends StatefulWidget {
  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _index,
      onTap: (newIndex) {
        setState(() {
          _index = newIndex;
        });
      },
      // ... items ...
    );
  }
}

```

Here, using `setState`() and a field inside the StatefulWidget’s State class is completely natural. No other part of your app needs to access `_index`. The variable only changes inside the `MyHomepage` widget. And, if the user closes and restarts the app, you don’t mind that `_index` resets to zero.

## App State

State that is not ephemeral, that you want to share across many parts of your app, and that you want to keep between user sessions, is what we call application state (sometimes also called `s`hared state`).






# Explore More :construction: 
- https://flutter.dev/docs/development/data-and-backend/state-mgmt/options