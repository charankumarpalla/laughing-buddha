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

## Challenges

- https://www.frontendmentor.io/

# NodeJs Catalog

## beginning-nodejs

- [ ] **Widgets** - [ ] IIFA [Immediatly Invoked Fucntion Expression](https://medium.com/@vvkchandra/essential-javascript-mastering-immediately-invoked-function-expressions-67791338ddc6) - [ ]
