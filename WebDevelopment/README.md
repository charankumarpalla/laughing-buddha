- [HTML](#html)
- [CSS](#css)
- [BooStrap](#boostrap)
  - [Challenges](#challenges)
- [NodeJs Catalog](#nodejs-catalog)
  - [beginning-nodejs](#beginning-nodejs)
-

# HTML

- https://devdocs.io/html/
- http://web.archive.org/
- http://www.fileformat.info/info/charset/index.htm
- https://unicode-table.com/en/alphabets/latin/
- https://crop-circle.imageonline.co/

- HTML meta data Why and how important ?

# CSS

- http://colorhunt.io/
- https://www.w3schools.com/cssref/css_default_values.asp - by default there is some css that browser renders to html
- Note : pretty much everything that exists on webpages are essentially just `boxes` - pesticide chrome extension
- inline vs internal vs external Style
- #id vs .class in css styles
- psuedo CSS classes(eg -> :hover) - Usually HTML pages has states like hover,click,drag,etc-so psuedo class are useful to tracking these states occurences
- favicon.cc
- BoxModel
  - http://markusvogl.com/web1/interactive_box_model/css_box_demo.html
- CSS Display Property

  - Display
    - Block (mostly occupy the width eg: p,h1,etc)
    - inline (eg : span)
    - inline-block
    - none

- CSS Positioning
  - Rules
    - Content is everything
    - Order Comes from HTML
    - Children sits in parents
  - Position
    - Static - go along with the html rules
    - Relative
    - Absolute
      - Relative vs Absolute
        - Relative : will not effect the next/before elements , relative is alone on it own
        - Absolute : will effect the next/before elements i.e if moved left next element wil take the previous position
    - Fixed : position is fixed,when page scrolled still it shows
- Art of centering
- Font Styling Text
  - font family
  - web safe fonts - http://cssfontstack.com/

```
	font-family: Futura, "Trebuchet MS", Arial, sans-serif;
```

- Font Embedding - googlefonts.com
- http://flaticon.com/
- CSS Sizing
  - Static FOnt Size - `px`
  - Dynamic Font Size
    - Font size through % not by px as when page zoomed it may vary...so use % i.e `font-size: 100%=16px`
    - `em` = 16px
    - `px` vs `em` vs `%` - px and em get inherited the parents size plus current there by it increases a lot
  - **CSS3** - `rem` vs `em` - in traditional em if parent and child size are set then ..the child size is sum of pareant and child there by its not good all the time. `rem` is root em which means ignore parent size and only sets child size independently.
- CSS Float and Clear
- https://cssbuttoncreator.com/

# BooStrap

- https://www.codeply.com/
- CDN - Content Delivery Network
- **WireFraming -> Mockups -> Prototypes**
  - Best Resource pages
    - https://sneakpeekit.com/ - wiring
      - https://balsamiq.cloud/
    - https://www.awwwards.com/
    - https://ui-patterns.com/ :star: :star: :star:
- NavBar
- Grid
- Containers
- Carousal
- cards
- https://bootsnipp.com/
- **Z-Index** - In Stacked/piled elements,first html elements are more backward and last html elements are forward towards screen
  - Usually to get the html elements forward we need to change the jtml elements order in html code.., but using z-index its easy no need to change any html just add it in css to give the opsition to that element in the stack
  - Z-index is always effective only if it is stacked i.e `position : Static/relative/absolute/Fixed`
  - By default Z-index value is `0` . the bigger number more towards the screen
- Media Query - `@media <type> <feature>`
- Code Refactoring

  - DRY vs WET
    - **READABILTY** -
    - **MODULARITY**
    - **EFFICIENCY**
    - **LENGTH**

- **ADVANCED CSS**

  - **Selectors**

    - **Multiple Selectors** - `h1, h3, h4, p {color: #fffe21}`
    - **Hierarchical Selectors** - `parent child {}`

      ```
      #User h1{
        color: red;
      }

      #Admin h1{
        color: cyan;
      }

      ```

      ```
      #user h1 {} NOT EQUAL TO h1 #user{}
      ```

    - **Combined Selectors** - `selector1.selector2{} or selector1#selector2{}`
    - `elements .class` **vs** `element.class`
    - Selector priority Order for the same element: `id > class > tag selector`

      ```
      h2{
        color: blue;
        color : yellow; // This is final
      }
      #heading{
        color: blue;  // This is final with high priority
      }

      .clas{
          color:yellow;
      }

      h1{
          color:red;
      }
      ```

## Challenges

- https://www.frontendmentor.io/

# NodeJs Catalog

## beginning-nodejs

- [ ] **Widgets** - [ ] IIFA [Immediatly Invoked Fucntion Expression](https://medium.com/@vvkchandra/essential-javascript-mastering-immediately-invoked-function-expressions-67791338ddc6) - [ ]
