
### <a name="Tabs">Tabs</a> 

Flutter includes a convenient way to create tab layouts as part of the material library.

1.  Create a  `TabController`
2.  Create the tabs
3.  Create content for each tab

**1. Create a TabController**

In order for tabs to work, we’ll need to keep the selected tab and content sections in sync. This is the job of the TabController.

We can either manually create a TabController or use the DefaultTabController Widget. Using the DefaultTabController is the simplest option, since it will create a TabController for us and make it available to all descendant Widgets.

**2. Create the tabs**

Now that we have a TabController to work with, we can create our tabs using the TabBar Widget. In this example, we’ll create a TabBar with 3 Tab Widgets and place it within an AppBar.

By default, the TabBar looks up the Widget tree for the nearest DefaultTabController. If you’re manually creating a TabController, you’ll need to pass it to the TabBar.


**3. Create content for each tab**

Now that we have tabs, we’ll want to display content when a tab is selected. For this purpose, we’ll employ the TabBarView Widget.

_*Note*_: Order is important and must correspond to the order of the tabs in the TabBar!




 <p align="center"> 
    <img src="../Images/TabBarDemo.gif" alt="Tabs Demo">
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
