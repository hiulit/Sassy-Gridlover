Sassy-Gridlover
===============

**Super easy to use Sass mixins** to establish a typographic system with modular scale and vertical rhythm.
Based on the [Gridlover app](http://www.gridlover.net/app/)

Gridlover gives you adjustable css for font sizes, line heights and margins.
The default css output is for body, p and h1 - h4 headings, but you can of course apply your
adjusted values to any element by editing the css later.

## First of all

Go play around with the awesome [Gridlover app](http://www.gridlover.net/app/)!

So much fun! :D

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

*These are the 3 functionalities of the [Gridlover app](http://www.gridlover.net/app/)*.

## Setup

Import `_gridlover.scss` to your main style sheet.

```
@import "gridlover";
```

Change the configurable variables values in `_config.scss` to your liking.

### _config.scss

```
// Scale factor variables.
// Don't change these variables!
$minorSecond: 1.067;
$majorSecond: 1.125;
$minorThird: 1.2;
$majorThird: 1.25;
$perfectFourth: 1.333;
$augmentedFourth: 1.414;
$perfectFifth: 1.5;
$minorSixth: 1.6;
$goldenSection: 1.618;
$majorSixth: 1.667;
$minorSeventh: 1.778;
$majorSeventh: 1.875;
$octave: 2;
$majorTenth: 2.5;
$majorEleventh: 2.667;
$majorTwelfth: 3;
$doubleOctave: 4;

// Default font size.
// Don't change this variable!
$defaultFontSize: 16;

// Configurable variables.
// Change away! :D
$baseFontSize: 18;
$baseLineHeight: 1.2;
$scaleFactor: $goldenSection;
```

## Mixins

### Gridlover body

To use in `body`.

Outputs `font-size`and `line-height`.

```
@mixin gridlover-body($size: $baseFontSize, $rem: false)
```

Accepts 2 arguments:

* `$size: $baseFontSize` Specifies the base font size (without unit, just a number).
* `$rem: false` Outputs rem units if `true` (`false` by default).

### Gridlover heading

To use in heading `h1 - h4`.

Outputs `font-size`, `line-height`, `margin-bottom` and `margin-top`.

```
@mixin gridlover-heading($step, $rem: false)
```

Accepts 2 arguments:

* `$step`
	* h1 -> $step: 3
	* h2 -> $step: 2
	* h3 -> $step: 1
	* h4 -> $step: 0
* `$rem: false` Outputs rem units if `true` (`false` by default).

### Gridlover margins

To use in `p`, `ul`, `ol`, `pre`, `table`, `blockquote`, etc.

Outputs `margin-bottom` and `margin-top`.

```
@mixin gridlover-margins($rem: false)
```

Accepts 1 argument:

* `$rem: false` Outputs rem units if `true` (`false` by default).

## Example usage

###SCSS

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

###CSS OUTPUT

```
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

## Inspiration and alternatives

* [Gridlover app](http://www.gridlover.net/app/) - The tool to establish a typographic system with modular scale and vertical rhythm.
* [Knife](https://github.com/Pushplaybang/knife) - Nail vertical rhythm, modular scale, and REMs like a boss with this simple set of SASS/SCSS variables, functions and mixins.
* [gridlover-mixin](https://github.com/sevenupcan/gridlover-mixin) - A mixin to generate modular scale and vertical rhythm for your typography.

## Credits

Thanks to:

* [Gridlover app](http://www.gridlover.net/app/) - Created by [Tuomas Jomppanen](http://twitter.com/tuomasj) & [Ville Vanninen](http://twitter.com/sakamies).
* [Sassy-math](https://github.com/Team-Sass/Sassy-math) - For the `@function exponent()`.

## Unlicense

### Sassy-Gridlover

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

## License

### Sassy-math

Copyright (c) 2012 [Sam Richard](https://github.com/Snugug), [Mario Valencia](https://github.com/sultancillo) and [Scott Kellum](https://github.com/scottkellum)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.