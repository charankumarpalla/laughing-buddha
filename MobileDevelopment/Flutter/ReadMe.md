# Flutter Catalog
- [ ] Widgets
	- [ ] Icon
	- [ ] text
	- [ ] TextField
	- [ ] TextFormFeild
	- [ ] Image
	- [ ] Card,Inkwell
	- [ ] Buttons
	- [ ] DropdownButton,MenuButton
	- [ ] other stateful widgets

- [ ] Layouts
	- [ ] Container
	- [ ] Row,Column
	- [ ] Wrap
	- [ ] Expanded
	- [ ] Stack

- [ ] Lists
	- [ ] ListTile
	- [ ] ListView.builder
	- [ ] GridList
	- [ ] ExpansionTile
	- [ ] Swipe to dismiss
	- [ ] Reorderable list
	- [ ] Data Table

- [ ] AppBar
	- [ ] Basic AppBar
	- [ ] Bottom AppBar
	- [ ] Sliver AppBar
	- [ ] Search

- [ ] Navigation
	- [ ] <a href="#Tabs">Tabs</a>
	- [ ] Dialogs
	- [ ] Routes
	- [ ] Navigation Drawer
	- [ ] Bottom tab Bar
	- [ ] Bottom navigation Bar
	- [ ] Page Selector

- [ ] Animation
	- [ ] Opacity
	- [ ] Hero

- [ ] Persistence
	- [ ] Shared preference
	- [ ] local file read/write

- [ ] State Management
	- [ ] StreamBuilder(timer app)
	- [ ] StreamController
	- [ ] InheritWidget
	- [ ] ScopeModel
	- [ ] BLoc Pattern
	- [ ] Easier BLoc pattern

- [ ] Plugins
	- [ ] Image picker
	- [ ] Web View
	- [ ] Markdown rendering
	- [ ] Local auth

- [ ] Firebase
	- [ ] Firebase login
	- [ ] Firebase voting app
	- [ ] Chat room
	- [ ] Firebase ML Kit


---



#### <a name="Tabs">Tabs</a> 


 <p align="center"> 
    <img src="Images/TabBarDemo.gif" alt="Tabs Demo">
 </p>
 
 
```
import 'package:flutter/material.dart';

void main() => runApp(TabBarDemo());

class TabBarDemo extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                title: Text("Tab Bar Demo"),
                bottom: TabBar(
                  tabs: [
                    Tab(icon: Icon(Icons.directions_walk)),
                    Tab(icon: Icon(Icons.directions_bike)),
                    Tab(icon: Icon(Icons.directions_boat))
                  ],
                ),
              ),
              body: TabBarView(
                children: <Widget>[
                  Icon(Icons.directions_walk,),
                  Icon(Icons.directions_bike),
                  Icon(Icons.directions_boat,size: 50)
                ],
              ),
            )));
  }
}

```
> Ref : <sup>[1](https://flutter.dev/docs/cookbook/design/tabs)</sup>


# Awesome Links

# Resources

 - [ ] Best Apps
	 - [ ] :heart: [https://github.com/X-Wei/flutter_catalog](https://github.com/X-Wei/flutter_catalog)
- [ ]  Links
	- [ ] [https://github.com/Solido/awesome-flutter](https://github.com/Solido/awesome-flutter)
	- [ ] [https://github.com/felangel/bloc](https://github.com/felangel/bloc)
