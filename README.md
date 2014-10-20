Sassy-Gridlover
===============

**Super easy to use Sass mixins** to establish a typographic system with modular scale and vertical rhythm.
Based on the [Gridlover app](http://www.gridlover.net/app/).

> Gridlover gives you adjustable css for font sizes, line heights and margins.
> The default css output is for body, p and h1 - h4 headings, but you can of course apply your
adjusted values to any element by editing the css later.

## First of all

Go play around with the awesome [Gridlover app](http://www.gridlover.net/app/)!

It's so much fun! :D

## Installation

Install **Sassy-Gridlover** via bower

```bash
$ bower install sassy-gridlover
```
or [Download](https://github.com/hiulit/Sassy-Gridlover/archive/master.zip) the repository and include the `sassy-gridlover` folder to your Sass directory.

## Getting started

**Sassy-Gridlover** consists of 3 configurable variables:

```scss
$sgl-base-font-size;
$sgl-base-line-height;
$sgl-scale-factor;
```

and 3 mixins:

```scss
@mixin sassy-gridlover-body();
@mixin sassy-gridlover-heading();
@mixin sassy-gridlover-margins();
```

*These are the 3 functionalities of the [Gridlover app](http://www.gridlover.net/app/) that you (should) have been playing with*.

## Setup

Import `_sassy-gridlover.scss` to your main style sheet.

```scss
@import "sassy-gridlover";
```

Change the configurable variables values in `_config.scss` to your liking.

### _config.scss

```scss
// Scale factor constants.
// Don't change them ever!
$MINOR_SECOND: 1.067;
$MAJOR_SECOND: 1.125;
$MINOR_THIRD: 1.2;
$MAJOR_THIRD: 1.25;
$PERFECT_FOURTH: 1.333;
$AUGMENTED_FOURTH: 1.414;
$PERFECT_FIFTH: 1.5;
$MINOR_SIXTH: 1.6;
$GOLDEN_SECTION: 1.618;
$MAJOR_SIXTH: 1.667;
$MINOR_SEVENTH: 1.778;
$MAJOR_SEVENTH: 1.875;
$OCTAVE: 2;
$MAJOR_TENTH: 2.5;
$MAJOR_ELEVENTH: 2.667;
$MAJOR_TWELFTH: 3;
$DOUBLE_OCTAVE: 4;

// Default font size.
// Don't change it ever!
$SGL_DEFAULT_FONT_SIZE: 16;

// Configurable variables.
// Ok... You can change these variables! :D
$sgl-base-font-size: 18 !default;
$sgl-base-line-height: 1.2 !default;
$sgl-scale-factor: $GOLDEN-SECTION !default;
```

## Mixins

By default, all the mixins will only output `px`. But you can also choose to output `rem`.

### Sassy-Gridlover body

To use in `<body>`.

Outputs `font-size` and `line-height`.

```scss
@mixin sassy-gridlover-body($font-size: $sgl-base-font-size, $rem: false)
```

Accepts 2 arguments:

* `$font-size`: Specifies the base font size (without unit, just a number).
* `$rem`: Outputs rem units if `true` (`false` by default).

### Sassy-Gridlover heading

To use in headings `<h1> - <h4>`.

Outputs `font-size`, `line-height`, `margin-bottom` and `margin-top`.

```scss
@mixin sassy-gridlover-heading($step, $rem: false)
```

Accepts 2 arguments:

* `$step`:
	* `<h1>` &rarr; `$step: 3`
	* `<h2>` &rarr; `$step: 2`
	* `<h3>` &rarr; `$step: 1`
	* `<h4>` &rarr; `$step: 0`
* `$rem`: Outputs rem units if `true` (`false` by default).

### Sassy-Gridlover margins

To use in `<p>`, `<ul>`, `<ol>`, `<pre>`, `<table>`, `<blockquote>`, etc.

Outputs `margin-bottom` and `margin-top`.

```scss
@mixin sassy-gridlover-margins($rem: false)
```

Accepts 1 argument:

* `$rem`: Outputs rem units if `true` (`false` by default).

## Example usage

###SCSS

```scss
@import "sassy-gridlover.scss";

body {
	@include sassy-gridlover-body($sgl-base-font-size, true);
}

h1 {
	@include sassy-gridlover-heading(3, true);
}
h2 {
	@include sassy-gridlover-heading(2, true);
}
h3 {
	@include sassy-gridlover-heading(1, true);
}
h4 {
	@include sassy-gridlover-heading(0, true);
}

p, ul, ol, pre, table, blockquote {
	@include sassy-gridlover-margins(true);
}
```

###CSS OUTPUT

```css
body {
	font-size: 18px;
	line-height: 22px;
	font-size: 1.125rem;
	line-height: 1.375rem; }

h1 {
	font-size: 76px;
	line-height: 88px;
	margin-bottom: 22px;
	margin-top: 44px;
	font-size: 4.75rem;
	line-height: 5.5rem;
	margin-bottom: 1.375rem;
	margin-top: 2.75rem; }

h2 {
	font-size: 47px;
	line-height: 66px;
	margin-bottom: 22px;
	margin-top: 44px;
	font-size: 2.9375rem;
	line-height: 4.125rem;
	margin-bottom: 1.375rem;
	margin-top: 2.75rem; }

h3 {
	font-size: 29px;
	line-height: 44px;
	margin-bottom: 22px;
	margin-top: 22px;
	font-size: 1.8125rem;
	line-height: 2.75rem;
	margin-bottom: 1.375rem;
	margin-top: 1.375rem; }

h4 {
	font-size: 18px;
	line-height: 22px;
	margin-bottom: 22px;
	margin-top: 22px;
	font-size: 1.125rem;
	line-height: 1.375rem;
	margin-bottom: 1.375rem;
	margin-top: 1.375rem; }

p, ul, ol, pre, table, blockquote {
	margin-bottom: 22px;
	margin-top: 22px;
	margin-bottom: 1.375rem;
	margin-top: 1.375rem; }
```

## To-Do

* Support em. There's a [branch](https://github.com/hiulit/Sassy-Gridlover/tree/em-support) for that matter.

## Changelog

### 1.1.0 (October 20th 2014)

* Added [SassDoc](http://sassdoc.com/) documentation [#6](https://github.com/hiulit/Sassy-Gridlover/issues/6).
* Applied naming conventions to constants [#5](https://github.com/hiulit/Sassy-Gridlover/issues/5).
* Added `pow()` function for [Compass](http://compass-style.org/reference/compass/helpers/math/), [Sassy-math](https://github.com/Team-Sass/Sassy-math]), etc. [#4](https://github.com/hiulit/Sassy-Gridlover/issues/4)
* Changed strings for lengths [#3](https://github.com/hiulit/Sassy-Gridlover/issues/3)
* Added `!default` to configurable variables [#2](https://github.com/hiulit/Sassy-Gridlover/issues/2)

### 1.0.0 (October 6th 2014)

* Released stable version.
* Added bower installation support.

### 0.1.0 (September 2nd 2014)

* Initial commit.

## Inspiration and alternatives

* [Gridlover app](http://www.gridlover.net/app/) - The tool to establish a typographic system with modular scale and vertical rhythm.
* [Knife](https://github.com/Pushplaybang/knife) - Nail vertical rhythm, modular scale, and REMs like a boss with this simple set of SASS/SCSS variables, functions and mixins.
* [gridlover-mixin](https://github.com/sevenupcan/gridlover-mixin) - A mixin to generate modular scale and vertical rhythm for your typography.

## Credits

Thanks to:

* [Gridlover app](http://www.gridlover.net/app/) - Created by [Tuomas Jomppanen](http://twitter.com/tuomasj) & [Ville Vanninen](http://twitter.com/sakamies).
* [Sassy-math](https://github.com/Team-Sass/Sassy-math) [&copy; 2012](https://github.com/Team-Sass/Sassy-math#license) - For the `@function exponent()`. Created by [Sam Richard](https://github.com/Snugug), [Mario Valencia](https://github.com/sultancillo) and [Scott Kellum](https://github.com/scottkellum)
* Marc Mintel ([@marcmintel](https://twitter.com/marcmintel)) for his amazing article on how to [Write Sass plugins like a pro](https://medium.com/@marcmintel/write-sass-plugins-like-a-pro-c765ecf3af27).
* Hugo Giraudel ([@hugogiraudel](hugogiraudel)) for helping with issues and [SassDoc](http://sassdoc.com/).

## Unlicense

This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author or authors
of this software dedicate any and all copyright interest in the
software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and
successors. We intend this dedication to be an overt act of
relinquishment in perpetuity of all present and future rights to this
software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to <http://unlicense.org/>