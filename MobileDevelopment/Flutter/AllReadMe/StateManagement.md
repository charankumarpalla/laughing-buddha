

Managing state in an application is one of the most important and necessary process in the life cycle of an application.

Let us consider a simple shopping cart application.

* User will login using their credentials into the application.

* Once user is logged in, the application should persist the logged in user detail in all the screen.

* Again, when the user selects a product and saved into a cart, the cart information should persist between the pages until the user checked out the cart.

* User and their cart information at any instance is called the state of the application at that instance.



<p align="center"> 
     <img width="700" height="200"  src="/PlayGround/ResourcesFiles/Flutter_Dart/StateManagement_.gif" alt="Flutter StateManagement Demo">
  </p>




![](/PlayGround/ResourcesFiles/Flutter_Dart/StateManagement_.gif)

<p align="center">
  <img width="400" height="180" src="/PlayGround/ResourcesFiles/AI_ML_DL_DS/AI-Ml-Dl-Ds.jpg" alt="Selection Sort Average Case">
</p>

A state management can be divided into two categories based on the duration the particular state lasts in an application.

* **Ephemeral** − Last for a few seconds like the current state of an animation or a single page like current rating of a product. Flutter supports its through `StatefulWidget`.

* **app state** − Last for entire application like logged in user details, cart information, etc., Flutter supports its through `scoped_model`.

