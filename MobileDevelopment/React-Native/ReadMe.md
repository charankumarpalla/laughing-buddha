# 🏗️【React-Native Building 】.......〖In PROGRESS〗 🚧

come After Some Time :) :)

https://learning.oreilly.com/library/view/react-native-for/9781484244548/html/346704_2_En_1_Chapter.xhtml

React Js + React Native = React Native Mobile Apps

Javascript is the language we use to build react native apps(Like Dart language for Flutter apps) with some special components like view,text wehich are not HTML components(because native platform doesnt understand html tags)

i.e React Js + React Native => (compiled to) => Real Native apps

The other unusual thing in this code example is `<View><Text>Hello world!</Text></View>`. This is JSX - a syntax for embedding XML within JavaScript. Many frameworks use a specialized templating language which lets you embed code inside markup language. In React, this is reversed. JSX lets you write your markup language inside code. It looks like HTML on the web, except instead of web things like `<div>` or `<span`>, you use React components. In this case, `<Text>` is a built-in component that displays some text and View is like the `<div>` or `<span>`.

# Two-Way Data Flow vs One-Way Data Flow(React Way)

<br>

<p align="center">
  <img src="../../PlayGround/ResourcesFiles/React-Native/_TwoWayDataFlow.png" alt="Simple two way Model-View Flow">
</p>

<br>

<br>

<p align="center">
  <img src="../../PlayGround/ResourcesFiles/React-Native/_TwoWayDataFlow_Complex.png" alt="Complex two way Model-View Flow">
</p>

<br>

<br>

<p align="center">
  <img src="../../PlayGround/ResourcesFiles/React-Native/_OneWayDataFlow_Complex.png" alt="React - One way Model-View Flow">
</p>

<br>

# Components

Components are the smallest units in React application development; they are indeed the most fundamental part of React. React is a library for building UIs and components are the key for creating any UI in React

```
import React, { Component } from 'react';
import { Text, View } from 'react-native';

export default class HelloWorldApp extends Component {
  render() {
    return (
      <View style={{ flex: 1, justifyContent: "center", alignItems: "center" }}>
        <Text>Hello, world!</Text>
      </View>
    );
  }
}
```

So this code is defining HelloWorld`App, a new`Component`. When you're building a React Native app, you'll be making new components a lot. Anything you see on the screen is some sort of component. A component can be pretty basic - the only thing that's required is a`render` function which returns some JSX to render.

> :fuelpump: `Compenents` in ReactNative is as `Widget` in Flutter
> `render` is something similar to `build` in flutter

# Props

Most components can be customized when they are created, with different parameters. These creation parameters are called `props`, short for properties.

For example, one basic React Native component is the `Image`. When you create an image, you can use a prop named `source` to control what image it shows.

> :bulb: [named vs default imports](https://stackoverflow.com/questions/36795819/when-should-i-use-curly-braces-for-es6-import)

## Deep-Dive into Components

### PROPERTIES

# Links

- [Best Components - Awesome](https://github.com/jondot/awesome-react-native#components) :star: :star: :star: :star: :star:
- [use-cases](https://github.com/react-native-community/lottie-react-native) :star: :star: :star: :star: :star:
