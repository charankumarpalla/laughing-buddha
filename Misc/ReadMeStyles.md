
Table of Contents
=================

   * [Best ReadMe Styles](#best-readme-styles)
   * [Resume application project](#resume-application-project)
   * [Bookmarks](#bookmarks)
      * [Chapter 4](#chapter-4)
   * [HTML <blockquote> for Quotations</blockquote>](#html--for-quotations)
   * [Colors](#colors)
   * [Hello World](#hello-world)
   * [Hello World](#hello-world-1)
   * [Hello ](#hello-)
   * [Hello World](#hello-world-2)
   * [Hello World](#hello-world-3)
   * [Background Image](#background-image)
      * [CSS Layout Float](#css-layout-float)
      * [Cities](#cities)
   * [London](#london)
   * [Table](#table)
   * [List](#list)




<div align="right">

<a href="a.Loaders.md" alt=""><img src="https://img.shields.io/badge/ReadMore-blue?style=plastic&logo=markdown"/></a>

<a href="a.Loaders.md" alt=""><img src="https://img.shields.io/badge/ReadMore-blue?style=for-the-badge&logo=markdown"/></a>


<a href="a.Loaders.md" alt=""><img src="https://img.shields.io/badge/ReadMore-...-green?style=for-the-badge&logo=markdown"/></a>


[**Continue Reading ......**](a.Loaders.md) 🔬
</div>


<a href="https://www.facebook.com/charanraj11" alt=""><img src="https://img.shields.io/badge/-lightblue?logo=Markdown"/></a>


# Best ReadMe Styles
<img align="left" width="80" height="80" src="https://raw.githubusercontent.com/akarsh/akarsh-seggemu-resume/master/akarsh%20seggemu%20resume/Assets/Assets.xcassets/AppIcon.appiconset/Icon-App-60x60%403x.png" alt="Resume application project app icon">

# Resume application project




<br>


<a href="#C4">Jump to Chapter 4</a>




![Next](../PlayGround/ResourcesFiles/Java/Pictures/glyphicons_211_right_arrow.png "Next")      Inline-style: 




<h1> <img src="https://raw.githubusercontent.com/akarsh/akarsh-seggemu-resume/master/akarsh%20seggemu%20resume/Assets/Assets.xcassets/AppIcon.appiconset/Icon-App-60x60%403x.png"
  width="128"
  height="128"
  style="float:left;">
     Quite a long title, potentially going over several lines and on and on and on and on and on and on and on and on and on
</h1>



This is a <mark>new</mark> element in HTML 5.

<p style="color:red;">I am red</p>
<p style="color:blue;">I am blue</p>
<p style="font-size:50px;">I am big</p>


<pre>
  My Bonnie lies over the ocean.

  My Bonnie lies over the sea.

  My Bonnie lies over the ocean.

  Oh, bring back my Bonnie to me.
</pre>

```
dasa
```


# Bookmarks

<a href="#C4">Jump to Chapter 4</a>

<h2 id="C4">Chapter 4</h2>


# HTML <blockquote> for Quotations
<p>Here is a quote from WWF's website:</p>
<blockquote cite="http://www.worldwildlife.org/who/index.html">
For 50 years, WWF has been protecting the future of nature.
The world's leading conservation organization,
WWF works in 100 countries and is supported by
1.2 million members in the United States and
close to 5 million globally.
</blockquote>

# Colors
<h1 style="background-color:DodgerBlue;">Hello World</h1>
<p style="background-color:green;">Lorem ipsum...</p>
<h1 style="color:Tomato;">Hello World</h1>
<p style="color:DodgerBlue;">Lorem ipsum...</p>
<p style="color:MediumSeaGreen;">Ut wisi enim...</p>

<h1 style="border: .5px solid Tomato;">Keep It Secret </h1>

<h1 style="border: 2px solid DodgerBlue;">Hello World</h1>

<h1 style="border: 2px solid Violet;">Hello World</h1>



# Background Image

<div style="background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEt1gULmSGUju4JgPo_NTFHkH7edTbU5y6m045ydAqpRcAWP6r&s');">
You can specify background images<br>
for any visible HTML element.<br>
In this example, the background image<br>
is specified for a div element.<br>
By default, the background-image<br>
will repeat itself in the direction(s)<br>
where it is smaller than the element<br>
where it is specified. (Try resizing the<br>
browser window to see how the<br>
background image behaves.
</div>




<style>
* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Style the header */
header {
  background-color: #666;
  padding: 30px;
  text-align: center;
  font-size: 35px;
  color: white;
}

/* Create two columns/boxes that floats next to each other */
nav {
  float: left;
  width: 30%;
  height: 300px; /* only for demonstration, should be removed */
  background: #ccc;
  padding: 20px;
}

/* Style the list inside the menu */
nav ul {
  list-style-type: none;
  padding: 0;
}

article {
  float: left;
  padding: 20px;
  width: 70%;
  background-color: #f1f1f1;
  height: 300px; /* only for demonstration, should be removed */
}

/* Clear floats after the columns */
section:after {
  content: "";
  display: table;
  clear: both;
}

/* Style the footer */
footer {
  background-color: #777;
  padding: 10px;
  text-align: center;
  color: white;
}

/* Responsive layout - makes the two columns/boxes stack on top of each other instead of next to each other, on small screens */
@media (max-width: 600px) {
  nav, article {
    width: 100%;
    height: auto;
  }
}
</style>
</head>
<body>

<h2>CSS Layout Float</h2>
<p>In this example, we have created a header, two columns/boxes and a footer. On smaller screens, the columns will stack on top of each other.</p>
<p>Resize the browser window to see the responsive effect (you will learn more about this in our next chapter - HTML Responsive.)</p>

<header>
  <h2>Cities</h2>
</header>

<section>
  <nav>
    <ul>
      <li><a href="#">London</a></li>
      <li><a href="#">Paris</a></li>
      <li><a href="#">Tokyo</a></li>
    </ul>
  </nav>
  
  <article>
    <h1>London</h1>
    <p>London is the capital city of England. It is the most populous city in the  United Kingdom, with a metropolitan area of over 13 million inhabitants.</p>
    <p>Standing on the River Thames, London has been a major settlement for two millennia, its history going back to its founding by the Romans, who named it Londinium.</p>
  </article>
</section>

<footer>
  <p>Footer</p>
</footer>




# Table
<table style="width:100%">
  <tr>
    <th>Firstname</th>
    <th>Lastname</th>
    <th>Age</th>
  </tr>
  <tr>
    <td>Jill</td>
    <td>Smith</td>
    <td>50</td>
  </tr>
  <tr>
    <td>Eve</td>
    <td>Jackson</td>
    <td>94</td>
  </tr>
</table>


# List
<ol>
  <li>Coffee</li>
  <li>Tea</li>
  <li>Milk</li>
</ol>

<ol type="A">
  <li>Coffee</li>
  <li>Tea</li>
  <li>Milk</li>
</ol>

<ol type="a">
  <li>Coffee</li>
  <li>Tea</li>
  <li>Milk</li>
</ol>

<ol type="I">
  <li>Coffee</li>
  <li>Tea</li>
  <li>Milk</li>
</ol>

<ul>
  <li>Coffee</li>
  <li>Tea
    <ul>
      <li>Black tea</li>
      <li>Green tea</li>
    </ul>
  </li>
  <li>Milk</li>
</ul>

<ol start="50">
  <li>Coffee</li>
  <li>Tea</li>
  <li>Milk</li>
</ol>

<!-- 
<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333333;
}

li {
  float: left;
}
.smallerFont {
  font-size: 34px;
  margin-bottom: 10px;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 16px;
  text-decoration: none;
}

li a:hover {
  background-color: #111111;
}
</style>

<body>

<h2>Navigation Menu</h2>
<p>In this example, we use CSS to style the list horizontally, to create a navigation menu:</p>
<span class="smallerFont">First half</span>
<ul>
  <li><a href="#home">Home</a></li>
  <li><a href="#news">News</a></li>
  <li><a href="#contact">Contact</a></li>
  <li><a href="#about">About</a></li>
</ul> -->