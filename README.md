# summernote-ext-addclass-rails

The gemification of the summernote extension [summernote-addclass][summernote-addclass]
for Rails >= 3.1.

<p align="center">
  <img src="https://cloud.githubusercontent.com/assets/954291/12879122/07e6edd0-ce2f-11e5-94f8-bd630fc7b07a.png" />
</p>

## Demo

Also, we have a [**live demo**][summernote-addclass-demo] (check the CSS3 icon button).

## Installation

Add the following gems to your application's `Gemfile`:

```ruby
gem 'bootstrap-sass'   # required
gem 'summernote-rails' # required
gem 'summernote-ext-addclass-rails', '~> 0.8.10'
```

And then execute on the terminal:

```sh
bundle install
```

## Usage

### JavaScript

In `app/assets/javascripts/application.js`, you should add in this order:

```js
//= require bootstrap
//= require summernote
//= require summernote-ext-addclass
```

### CoffeeScript

In `app/assets/javascripts/application.coffee`, you should add in this order:

```coffeescript
#= require bootstrap
#= require summernote
#= require summernote-ext-addclass
```

## Customization

```js
$('[data-provider="summernote"]').summernote({
  addclass: {
    debug: false,
    classTags: [
      { title: 'My Special style', value: 'kappa-css'},
      'text-muted',
      'text-primary'
    ]
  },
  height: 300,
  toolbar: [
    // ['groupName', ['list-of-button']]
    ['style', ['style', 'addclass', 'clear']],
    ['misc',  ['codeview', 'help']]
  ]
});
```

More information [**here**][summernote-addclass-wiki].

## Versioning

|  Major  |  Minor  |  Patch  |  Current  |
|:-------:|:-------:|:-------:|:---------:|
| is the major of [summernote][summernote] | is the minor of [summernote][summernote] | is the patch of [summernote][summernote] | is the vesion of this extension |

*Example:*

The compatible versions of this gem with [summernote][summernote] `v0.8.10` are:

- `summernote-ext-image-attributes-rails v0.8.10.X`

## License

[MIT][license]


[summernote]: https://github.com/summernote/summernote
[summernote-addclass]: https://github.com/creativeprogramming/summernote-addclass
[summernote-addclass-wiki]: https://github.com/creativeprogramming/summernote-addclass/wiki
[summernote-addclass-demo]: https://jsfiddle.net/rastrano/dtgr5q29/
[license]: ./LICENSE.txt
