Sassy-Gridlover
===============

Sass mixins to establish a typographic system with modular scale and vertical rhythm.
Based on the Gridlover app http://www.gridlover.net/app/

Gridlover gives you adjustable css for font sizes, line heights and margins.
The default css output is for body, p and h1 - h4 headings, but you can of course apply your
adjusted values to any element by editing the css later.

## First of all

Go play around with the awesome [Gridlover app](http://www.gridlover.net/app/)!

You'll see that you can change the **font size**, **line height* and **scale factor** values and then you get
the CSS output in either **px**, **em** and **rem**. Also you can change the output to be in either **CSS**,
**SCSS**, **Less** or *Stylus**.

## Usage

**Sassy-Gridlover** has 3 mixins:

`@mixin gridlover-body($size: $baseFontSize, $rem: false);`
