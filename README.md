Sassy-Gridlover
===============

Sass mixins to establish a typographic system with modular scale and vertical rhythm.
Based on the Gridlover app http://www.gridlover.net/app/

Gridlover gives you adjustable css for font sizes, line heights and margins.
The default css output is for body, p and h1 - h4 headings, but you can of course apply your
adjusted values to any element by editing the css later.

## First of all

Go play around with the awesome [Gridlover app](http://www.gridlover.net/app/)!

You'll see that you can change the **font size**, **line height** and **scale factor** values. Then you get
the CSS output in either **px**, **em** and **rem**. Also you can change the output to be in either **CSS**,
**SCSS**, **Less** or **Stylus**.

So much fun!

## Getting started

**Sassy-Gridlover** consists of 4 variables:

```
$browserFontSize;
$baseFontSize;
$baseLineHeight;
$scaleFactor;
```

and 3 mixins:

```
@mixin gridlover-body($size: $baseFontSize, $rem: false);
@mixin gridlover-heading($step, $rem: false)
@mixin gridlover-margins($rem: false)
```

These are the 3 functionalities of the [Gridlover app](http://www.gridlover.net/app/).

## Setup

Import `_gridlover.scss` to your main style sheet.

```
@import "gridlover";
```

Change the variables values in `_config.scss` to your liking. **But leave the `$browserFontSize` at 16!**

### _config.scss example

```
// Don't change this variable!
$browserFontSize: 16;

// Change away! :D
$baseFontSize: 18;
$baseLineHeight: 1.2;
$scaleFactor: 1.618;
```

## Mixins

* gridlover-body

	```
	@mixin gridlover-body($size: $baseFontSize, $rem: false)
	```
	Accepts 2 arguments:
		* `$size: $baseFontSize`
		Specifies 
		* `$rem: false`
		Prints rem units if `true` (`false` by default).
## Example usage

```
@import "gridlover.scss";

body {
	@include gridlover-body($baseFontSize, true);
}

h1 {
	@include gridlover-heading(3, true);
}
h2 {
	@include gridlover-heading(2, true);
}
h3 {
	@include gridlover-heading(1, true);
}
h4 {
	@include gridlover-heading(0, true);
}

p, ul, ol, pre, table, blockquote {
	@include gridlover-margins(true);
}
```





