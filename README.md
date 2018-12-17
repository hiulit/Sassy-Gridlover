Sassy-Gridlover [![Build Status](https://travis-ci.org/hiulit/Sassy-Gridlover.svg?branch=master)](https://travis-ci.org/hiulit/Sassy-Gridlover)
===============

**Super easy to use Sass mixins** to establish a typographic system with modular scale and vertical rhythm.
Based on the [Gridlover app](https://www.gridlover.net/try).

> Gridlover gives you adjustable CSS for font sizes, line heights and margins.
> The default CSS output is for `html`, `body`, `h1`-`h6`, `p`, `ul`, `ol`, etc. but you can of course apply your adjusted values to any element by editing the CSS later.

## First of all

Go play around with the awesome [Gridlover app](https://www.gridlover.net/try)!

It's so much fun! 😄

## Installation

Install **Sassy-Gridlover** via **bower**.

```bash
$ bower install sassy-gridlover
```

Install **Sassy-Gridlover** via **npm**.

```bash
$ npm install sassy-gridlover
```

or [Download](https://github.com/hiulit/Sassy-Gridlover/archive/master.zip) the repository and include the `sassy-gridlover` folder to your Sass directory.

## Getting started

**Sassy-Gridlover** consists of 6 configurable variables:

```scss
$sgl-base-font-size;
$sgl-base-line-height;
$sgl-base-unit;
$sgl-scale-factor;
$sgl-debug-mode;
$sgl-extras;
```

and 4 mixins:

```scss
@mixin sgl-html();
@mixin sgl-body();
@mixin sgl-heading();
@mixin sgl-margins();
```

*These are the 4 functionalities of the [Gridlover app](https://www.gridlover.net/try) that you (should) have been playing with* ;)

## Setup

Import `_sassy-gridlover.scss` to your main style sheet.

```scss
@import "sassy-gridlover";
```

Change the configurable variables values in `_config.scss` to your liking.

I would encourage you **not to change them directly here**, though. It would be better to declare them in your `_variables.scss`, `_config.scss` or the like.

## Mixins

By default, all the mixins (except `sgl-html`) will output `pxrem`. But you can also choose to output `px`, `em` or `rem`.

### `sgl-html()`

To be used on `<html>`.

Outputs `font-size` and `line-height` **always** in `px`.

```scss
@mixin sgl-html($font-size: $sgl-base-font-size)
```

Accepts 1 argument:

* `$font-size`: Base font size (without unit, just a number).

### `sgl-body()`

To be used on `<body>`.

Outputs `font-size` and `line-height`.

```scss
@mixin sgl-body($unit: $sgl-base-unit)
```

Accepts 1 argument:

* `$unit`: Unit to output (`px`, `em`, `rem`, `pxrem`).

### `sgl-heading()`

To be used on headings `<h1> - <h6>`.

Outputs `font-size`, `line-height`, `margin-bottom` and `margin-top`.

```scss
@mixin sgl-heading($step, $unit: $sgl-base-unit, $base-value: $sgl-root-font-size)
```

Accepts 3 arguments:

* `$step`:
	* `<h1>` &rarr; `$step: 3`
	* `<h2>` &rarr; `$step: 2`
	* `<h3>` &rarr; `$step: 1`
    * `<h4>` &rarr; `$step: 0`
    * `<h5>` &rarr; `$step: 0`
	* `<h6>` &rarr; `$step: 0`
* `$unit`: Unit to output (`px`, `em`, `rem`, `pxrem`).
* `$base-value`: Optional parameter for a different base font size when using em.

### `sgl-margins()`

To be used on `<p>`, `<ul>`, `<ol>`, `<pre>`, `<table>`, `<blockquote>`, etc.

Outputs `margin-bottom` and `margin-top`.

```scss
@mixin sgl-margins($unit: $sgl-base-unit, $base-value: $sgl-root-font-size)
```

Accepts 2 arguments:

* `$unit`: Unit to output (`px`, `em`, `rem`, `pxrem`).
* `$base-value`: Optional parameter for a different base font size when using em.

## Debug mode

Enables/disables **debug mode**.

Outputs background lines imitating a notebook's sheet.

Accepts 1 argument:

* `$sgl-debug-mode`: `true` / `false`.

Declare it in your own `_variables.scss`, `_config.scss` or the like.
Basically, **it must be declared before the** `@import "sassy-gridlover"`.

### Example

![Example of Sassy-Gridlover's debug mode](example/example.png)

## Extras

Styles to make sure everything is aligned.

Outputs extra **reset styles**.

Accepts 1 argument:

* `$sgl-extras`: `true` / `false`.

Declare it in your own `_variables.scss`, `_config.scss` or the like.
Basically, **it must be declared before the** `@import "sassy-gridlover"`.

### CSS output
```css
html ul ul,
html ol ol,
html ul ol,
html ol ul {
    margin-bottom: 0;
    margin-top: 0;
}

html hr,
html .hr {
    border: 1px solid;
    margin: -1px 0;
}

html a,
html b,
html i,
html strong,
html em,
html small,
html code {
    line-height: 0;
}

html sub,
html sup {
    line-height: 0;
    position: relative;
    vertical-align: baseline;
}

html sup {
    top: -0.5em;
}

html sub {
    bottom: -0.25em;
}
```

## Example usage

### SCSS

```scss
$sgl-debug-mode: false;
$sgl-extras: false;

@import "../../sassy-gridlover/sassy-gridlover";

html {
    @include sgl-html();
}

body {
    @include sgl-body("rem");
}

h1 {
    @include sgl-heading(3, "em");
}

h2 {
    @include sgl-heading(2, "px");
}

h3 {
    @include sgl-heading(1, "pxrem");
}

h4 {
    @include sgl-heading(0);
}

p,
ul,
ol,
pre,
table,
blockquote {
    @include sgl-margins();
}
```

### CSS output

```css
html {
    font-size: 16px;
    line-height: 19px;
}

body {
    font-size: 1rem;
    line-height: 1.1875rem;
}

h1 {
    font-size: 4.25em;
    line-height: 1.11765em;
    margin-bottom: 0.55883em;
    margin-top: 0.27942em;
}

h2 {
    font-size: 42px;
    line-height: 57px;
    margin-bottom: 19px;
    margin-top: 19px;
}

h3 {
    font-size: 26px;
    line-height: 38px;
    margin-bottom: 0px;
    margin-top: 19px;
    font-size: 1.625rem;
    line-height: 2.375rem;
    margin-bottom: 0rem;
    margin-top: 1.1875rem;
}

h4 {
    font-size: 16px;
    line-height: 19px;
    margin-bottom: 0px;
    margin-top: 19px;
    font-size: 1rem;
    line-height: 1.1875rem;
    margin-bottom: 0rem;
    margin-top: 1.1875rem;
}

p,
ul,
ol,
pre,
table,
blockquote {
    margin-bottom: 19px;
    margin-top: 0;
    margin-bottom: 1.1875rem;
    margin-top: 0;
}
```

## Changelog

See [CHANGELOG](/CHANGELOG.md).

## Contributing

See [CONTRIBUTING](/CONTRIBUTING.md).

## Authors

* Me 😛 [@hiulit](https://github.com/hiulit).

## Inspiration and alternatives

* [Gridlover app](https://www.gridlover.net/try) - The tool to establish a typographic system with modular scale and vertical rhythm.
* [Knife](https://github.com/Pushplaybang/knife) - Nail vertical rhythm, modular scale, and REMs like a boss with this simple set of SASS/SCSS variables, functions and mixins.
* [gridlover-mixin](https://github.com/sevenupcan/gridlover-mixin) - A mixin to generate modular scale and vertical rhythm for your typography.

## Credits

Thanks to:

* [Gridlover app](https://www.gridlover.net/try) - Created by [Tuomas Jomppanen](http://twitter.com/tuomasj) & [Ville Vanninen](http://twitter.com/sakamies).
* [Sassy-math](https://github.com/Team-Sass/Sassy-math) [&copy; 2012](https://github.com/Team-Sass/Sassy-math#license) - For the `@function exponent()`. Created by [Sam Richard](https://github.com/Snugug), [Mario Valencia](https://github.com/sultancillo) and [Scott Kellum](https://github.com/scottkellum).
* Marc Mintel ([@marcmintel](https://twitter.com/marcmintel)) for his amazing article on how to [Write Sass plugins like a pro](https://medium.com/@marcmintel/write-sass-plugins-like-a-pro-c765ecf3af27).
* Hugo Giraudel ([@hugogiraudel](https://twitter.com/hugogiraudel)) for helping with issues and setting up [SassDoc](http://sassdoc.com/).
* Walid Mokrani ([@walmokrani](https://github.com/walmokrani)) for helping with [adding em support](https://github.com/hiulit/Sassy-Gridlover/pull/7).
* Takeru Suzuki ([@terkel](https://github.com/terkel)) - For the `@function decimal-xxx`.
* Matt Andrews ([@matthew-andrews](https://github.com/matthew-andrews)) - For his [Travis CI Sass Example](https://github.com/matthew-andrews/sass-example).
* Thomas Blum [@tbaddade](https://github.com/tbaddade) - For detecting a typo in [`sgl-extras` variable](https://github.com/hiulit/Sassy-Gridlover/pull/16).
* Many other sources I don't recall right now... 😅 I'm trying to... 🤔 But when they come to me, I'll put them here right away! 😎

## License

[MIT License](/LICENSE).
