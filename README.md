# Sassy-Gridlover [![Build Status](https://travis-ci.org/hiulit/Sassy-Gridlover.svg?branch=master)](https://travis-ci.org/hiulit/Sassy-Gridlover)

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

**Sassy-Gridlover** consists of 7 configurable variables:

```scss
$sgl-base-font-size;
$sgl-base-line-height;
$sgl-base-unit;
$sgl-scale-factor;
$sgl-debug-mode;
$sgl-debug-mode-max-width;
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

By default, all the mixins (except `sgl-html`) will output `em`. But you can also choose to output `px`, `rem` or `pxrem`.

### `sgl-html()`

To use on `<html>`.

Outputs `font-size` and `line-height` **always** in `px`.

```scss
@mixin sgl-html($font-size: $sgl-base-font-size)
```

#### Parameters

| Name | Description | Type | Default value |
| :---: | :---: | :---: | :---: |
| `$font-size` | Root font size. | `Number` | `	$sgl-base-font-size` |

### `sgl-body()`

To use on `<body>`.

Outputs `font-size` and `line-height`.

```scss
@mixin sgl-body($line-height-step: 0, $unit: $sgl-base-unit)
```

#### Parameters

| Name | Description | Type | Default value |
| :---: | :---: | :---: | :---: |
| `$line-height-step` | Multiplies the step number by the base `line-height` (from `sgl-html`). If `0` is set, it will actually multiply by `1`. | `Number` | 0 |
| `$unit` | Unit to output (`px`, `em`, `rem`, `pxrem`). | `String` | `$sgl-base-unit` |

### `sgl-heading()`

To use on headings `<h1> - <h6>`.

Outputs `font-size`, `line-height`, `margin-top` and `margin-bottom`.

```scss
@mixin sgl-heading($font-size-step, $line-height-step, $margin-top-step, $margin-bottom-step, $unit: $sgl-base-unit, $base-value: $sgl-base-font-size)
```

#### Parameters

| Name | Description | Type | Default value |
| :---: | :---: | :---: | :---: |
| `$font-size-step` | Creates an exponent of the base `font-size` (from `sgl-html`) in conjunction with `sgl-scale-factor`. `0` is the base `font-size`.  | `Number` | - |
| `$line-height-step` | Multiplies the step number by the base `line-height` (from `sgl-html`). If `0` is set, the `line-height` will grow with the `font-size` accordingly. | `Number` | - |
| `$margin-top-step` | Multiplies the step number by the base `line-height` (from `sgl-html`). | `Number` | - |
| `$margin-bottom-step` | Multiplies the step number by the base `line-height` (from `sgl-html`). | `Number` | - |
| `$unit` | Unit to output (`px`, `em`, `rem`, `pxrem`). | `String` | `$sgl-base-unit` |
| `$base-value` | Optional parameter for a different base font size when using `em`. | `Number` | `$sgl-base-font-size` |

### `sgl-margins()`

To use on `<p>`, `<ul>`, `<ol>`, `<pre>`, `<table>`, `<blockquote>`, etc.

Outputs `margin-bottom` and `margin-top`.

```scss
@mixin sgl-margins($margin-top-step, $margin-bottom-step, $unit: $sgl-base-unit, $base-value: $sgl-base-font-size)
```

#### Parameters

| Name | Description | Type | Default value |
| :---: | :---: | :---: | :---: |
| `$margin-top-step` | Multiplies the step number by the base `line-height` (from `sgl-html`). | `Number` | - |
| `$margin-bottom-step` | Multiplies the step number by the base `line-height` (from `sgl-html`). | `Number` | - |
| `$unit` | Unit to output (`px`, `em`, `rem`, `pxrem`). | `String` | `$sgl-base-unit` |
| `$base-value` | Optional parameter for a different base font size when using `em`. | `Number` | `$sgl-base-font-size` |

## Debug mode

Enables/disables **debug mode**.

Outputs background lines imitating a notebook's sheet.

#### Parameters

| Name | Description | Type | Default value |
| :---: | :---: | :---: | :---: |
| `$sgl-debug-mode` | Enables/disables **debug mode**. | `Boolean` | `false` |

Declare it in your own `_variables.scss`, `_config.scss` or the like.
Basically, **it must be declared before the** `@import "sassy-gridlover"`.

### Example

![Example of Sassy-Gridlover's debug mode](example/example.png)

## Extras

Styles to make sure everything is aligned.

Outputs extra **reset styles**.
 
#### Parameters

| Name | Description | Type | Default value |
| :---: | :---: | :---: | :---: |
| `$sgl-extras` | Outputs styles to make sure everything is aligned. | `Boolean` | `false` |

Declare it in your own `_variables.scss`, `_config.scss` or the like.
Basically, **it must be declared before the** `@import "sassy-gridlover"`.

### CSS output
```css
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
// $sgl-debug-mode-max-width: 1024; // Only needed if `$sgl-debug-mode` is `true`.
$sgl-extras: false;

@import "../../sassy-gridlover/sassy-gridlover";

html {
    @include sgl-html;
}

body {
    @include sgl-body;
}

h1 {
    @include sgl-heading(3, 0, 1, 2);
}

h2 {
    @include sgl-heading(2, 0, 1, 1);
}

h3 {
    @include sgl-heading(1, 0, 1, 0);
}

h4 {
    @include sgl-heading(0, 0, 1, 0);
}

h5 {
    @include sgl-heading(0, 0, 1, 0);
}

p,
ul,
ol,
pre,
table,
blockquote {
    @include sgl-margins(0, 1);
}

ul ul,
ol ol,
ul ol,
ol ul {
    @include sgl-margins(0, 0);
}
```

### CSS output

```css
html {
  font-size: 18px;
  line-height: 23px;
}

body {
  font-size: 1em;
  line-height: 1.27778em;
}

h1 {
  font-size: 4.22223em;
  line-height: 1.21053em;
  margin-top: 0.30264em;
  margin-bottom: 0.60527em;
}

h2 {
  font-size: 2.61112em;
  line-height: 1.46809em;
  margin-top: 0.48937em;
  margin-bottom: 0.48937em;
}

h3 {
  font-size: 1.61112em;
  line-height: 1.58621em;
  margin-top: 0.79311em;
  margin-bottom: 0em;
}

h4 {
  font-size: 1em;
  line-height: 1.27778em;
  margin-top: 1.27778em;
  margin-bottom: 0em;
}

h5 {
  font-size: 1em;
  line-height: 1.27778em;
  margin-top: 1.27778em;
  margin-bottom: 0em;
}

p,
ul,
ol,
pre,
table,
blockquote {
  margin-top: 0em;
  margin-bottom: 1.27778em;
}

ul ul,
ol ol,
ul ol,
ol ul {
  margin-top: 0em;
  margin-bottom: 0em;
}
```

## Changelog

See [CHANGELOG](/CHANGELOG.md).

## Contributing

See [CONTRIBUTING](/CONTRIBUTING.md).

## Authors

* Me 😛 [@hiulit](https://github.com/hiulit).

## Inspiration and alternatives

* [Gridlover app](https://www.gridlover.net/try) - The tool to establish a typographic system with modular scale and vertical rhythm on which **Sassy-gridlover** is based.
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
* Many other sources I don't recall right now... 😅  I'm trying to... 🤔  But when they come to me, I'll put them here right away! 😎

## License

[MIT License](/LICENSE).
