- [Expanded](#expanded)
- [| Wrap](#wrap)
- [| AnimatedContainer](#animatedcontainer)
-

# Expanded

A widget that expands a child of a Row, Column, or Flex so that the child fills the available space.

Using an Expanded widget makes a child of a Row, Column, or Flex expand to fill the available space along the main axis (e.g., horizontally for a Row or vertically for a Column). If multiple children are expanded, the available space is divided among them according to the flex factor.

**An Expanded widget must be a descendant** of a Row, Column, or Flex, and the path from the Expanded widget to its enclosing Row, Column, or Flex must contain only StatelessWidgets or StatefulWidgets (not other kinds of widgets, like RenderObjectWidgets).

- https://api.flutter.dev/flutter/widgets/Expanded-class.html
- Challenges :
  - https://medium.com/flutter-community/flutter-widget-guide-expanded-widget-in-5-mins-or-less-7fac99839658

<!-- # Wrap -->

# | Wrap

The wrap widget is similar to Row or a Column widget with an added advantage that it can adjust its children according to the space available to it on the Screen. The default arrangement is horizontal (like a row) but you can make it vertical (like a column) as well by changing its direction property. You can adjust the space in between the adjacent children and the space between the lines as per your need.

 <p align="center"> 
    <img src="PlayGround/ResourcesFiles/Flutter_Dart/Widget_Wrap_.jpeg" alt="Widget_Wrap_">
 </p>

# | AnimatedContainer
