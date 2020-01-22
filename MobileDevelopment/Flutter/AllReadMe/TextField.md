- [TextField](#textfield)
  - [A. Supply an onChanged() callback to a TextField or a TextFormField](#a-supply-an-onchanged-callback-to-a-textfield-or-a-textformfield)
  - [B. Use a TextEditingController](#b-use-a-texteditingcontroller)
- [Focus and text fields](#focus-and-text-fields)
- [KeyPoints](#keypoints)

Text fields allow users to type text into an app. They are used to build forms, send messages, create search experiences, and more. In this recipe, explore how to create and style text fields.

Flutter provides two text fields:

- TextField
- TextFormField.

# TextField

`TextField` is the most commonly used text input widget.

By default, a TextField is `decorated` with an underline. You can add a _label, icon, inline hint text, and error text_ by supplying an `InputDecoration` as the `decoration` property of the TextField. To remove the decoration entirely (including the underline and the space reserved for the label), set the decoration to null.

```
TextField(
  decoration: InputDecoration(
    border: InputBorder.none,
    hintText: 'Enter a search term'
  ),
);
```

To retrieve the value when it changes,

In some cases, it’s useful to run a callback function every time the text in a text field changes. For **example**, you might want to build a search screen with autocomplete functionality where you want to update the results as the user types.

How do you run a callback function every time the text changes? With Flutter, you have two options:

- Supply an onChanged() callback to a TextField or a TextFormField.
- Use a TextEditingController.

## A. Supply an onChanged() callback to a TextField or a TextFormField

The simplest approach is to supply an `onChanged()` callback to a `TextField` or a `TextFormField`. Whenever the text changes, the callback is invoked.

In this example, print the current value of the text field to the console every time the text changes.

```
TextField(
  onChanged: (text) {
    print("First text field: $text");
  },
);

```

## B. Use a TextEditingController

A more powerful, but more elaborate approach, is to supply a `TextEditingController` as the controller property of the TextField or a TextFormField.

To be notified when the text changes, listen to the controller using the addListener() method using the following steps:

1. Create a TextEditingController.
2. Connect the TextEditingController to a text field.
3. Create a function to print the latest value.
4. Listen to the controller for changes.

```
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Retrieve Text Input',
      home: MyCustomForm(),
    );
  }
}

// Define a custom Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

// Define a corresponding State class.
// This class holds data related to the Form.
class _MyCustomFormState extends State<MyCustomForm> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final myController = TextEditingController();

  @override
  void initState() {
    super.initState();

    myController.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    // This also removes the _printLatestValue listener.
    myController.dispose();
    super.dispose();
  }

  _printLatestValue() {
    print("Second text field: ${myController.text}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Retrieve Text Input'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (text) {
                print("First text field: $text");
              },
            ),
            TextField(
              controller: myController,
            ),
          ],
        ),
      ),
    );
  }
}
```

# Focus and text fields

When a text field is selected and accepting input, it is said to have **“focus"**. Generally, users shift focus to a text field by tapping, and developers shift focus to a text field programmatically by using the tools described in this recipe.

Managing focus is a fundamental tool for creating forms with an intuitive flow. For example, say you have a search screen with a text field. When the user navigates to the search screen, you can set the focus to the text field for the search term. This allows the user to start typing as soon as the screen is visible, without needing to manually tap the text field.

To give focus to a text field as soon as it’s visible, use the autofocus property.

```
TextField(
  autofocus: true,
);
```

Another way , Focus a text field when a button is tapped

Rather than immediately shifting focus to a specific text field,you might need to give focus to a text field at a later point in time. In the real world, you might also need to give focus to a specific text field in response to an API call or a validation error. In this example, give focus to a text field after the user presses a button using the following steps:

- Create a FocusNode.

First, create a FocusNode. Use the FocusNode to identify a specific TextField in Flutter’s “**focus tree**.” This allows you to give focus to the TextField in the next steps.

Since focus nodes are long-lived objects, manage the lifecycle using a State object. Use the following instructions to create a FocusNode instance inside the `initState()` method of a State class, and clean it up in the `dispose()` method:

```
    // Define a custom Form widget.
    class MyCustomForm extends StatefulWidget {
    @override
    _MyCustomFormState createState() => _MyCustomFormState();
    }

    // Define a corresponding State class.
    // This class holds data related to the form.
    class _MyCustomFormState extends State<MyCustomForm> {
    // Define the focus node. To manage the lifecycle, create the FocusNode in
    // the initState method, and clean it up in the dispose method.
    FocusNode myFocusNode;

    @override
    void initState() {
        super.initState();

        myFocusNode = FocusNode();
    }

    @override
    void dispose() {
        // Clean up the focus node when the Form is disposed.
        myFocusNode.dispose();

        super.dispose();
    }

    @override
    Widget build(BuildContext context) {
        // Fill this out in the next step.
    }
    }
```

- Pass the FocusNode to a TextField.

Now that you have a FocusNode, pass it to a specific TextField in the build() method.

```
class _MyCustomFormState extends State<MyCustomForm> {
  // Code to create the Focus node...

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: myFocusNode,
    );
  }
}

```

- Give focus to the TextField when a button is tapped

Finally, focus the text field when the user taps a floating action button. Use the requestFocus() method to perform this task.

```
FloatingActionButton(
  // When the button is pressed, give focus to the text field using
  // myFocusNode.
  onPressed: () => FocusScope.of(context).requestFocus(myFocusNode),
);

```

---

- https://flutterawesome.com/tag/textfield/ :star:
- [List of examples](https://github.com/ejabu/flutter_text_field_control/blob/master/lib/b_screen/auto_call_api.dart) :star: :star:

:exclamation:

- https://stackoverflow.com/questions/54995056/im-try-use-controller-of-textfield-but-i-receive-error-nosuchmethoderror-the

# KeyPoints

<p align="center">

<a><img src="https://img.shields.io/badge/EditTextController-blue"/></a>
<a><img src="https://img.shields.io/badge/FocusNode-green"/></a>

<!-- <a><img src="https://img.shields.io/badge/dasdsdasds-blue"/></a> -->
<!-- <a href="https://www.facebook.com/charanraj11" alt=""><img src="https://img.shields.io/badge/-lightblue?logo=facebook"/></a>
<a alt=""><img src="https://img.shields.io/github/languages/count/charankumarpalla/laughing-buddha?color=green"/></a>
<a><img src="https://img.shields.io/twitter/follow/CharanKumaPalla?label=Follow"/></a> -->

</p>
