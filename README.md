# SnakeCamel

This Gem provides several ways for conversation between CamalCase and snake_case.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'snake_camel'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install snake_camel


## Methods

  - snakecase

  - snakecase!

  - camelcase

  - camelcase!


## Usage

  You have several ways to use it, it's pretty simple. Choose one, based on your need!

  - If you don't care about what's under the hood:

  ```ruby
  require 'snake_camel'

  'SnakeCamel'.snakecase #=> 'snake_camel'

  or

  'snake_camel'.camelcase #=> 'SnakeCamel'
  ```

  - If you don't want to monkey-patch your String class:

```ruby
require 'snake_camel/instance_methods'

foo = 'FooBar'
foo.extend SnakeCamel::InstanceMethods

foo.snakecase #=> foo_bar

or

foo = 'foo_bar'
foo.extend SnakeCamel::InstanceMethods

foo.camelcase #=> FooBar
```
- And you can use it like a regular method:

```ruby
require 'snake_camel/methods'

SnakeCamel::Methods.snakecase('FooBar') #=> foo_bar

SnakeCamel::Methods.camelcase('foo_bar') #=> FooBar
```


## Creator's notes

I know there are other gems that provide the same functionality as SnakeCamel, but I want to create something more gentle, more simple.


## Contributing

1. Fork it ( https://github.com/[my-github-username]/snake_camel/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

