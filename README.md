# Elementy

This is a simple gem to lookup elements in the periodic table.

## Installation

Add this line to your application's Gemfile:

    gem 'elementy'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install elementy

## Usage

Usage is pretty simple:

```ruby
require 'elementy'

Elementy.search 2
# => #<Elementy::Element @group="Element Noble p", @position=17, @number=2, @name="Helium", @molar=4.002602, @symbol="He", @electrons=[2]>

Elementy.search 'C'
# => #<Elementy::Element:0x007fab5bb352f0 @group="Element Nonmetal Carbon p", @position=13, @number=6, @name="Carbon", @molar=12.0107, @symbol="C", @electrons=[2, 4]>

Elementy.search 'einsteinium'
# => #<Elementy::Element @group="Element Actinoid f", @position=12, @number=99, @name="Einsteinium", @molar=252, @symbol="Es", @electrons=[2, 8, 18, 32, 29, 8, 2]>
```

You can also use it on the command line

```bash
$ elementy 42
   symbol:      Mo
   name:        Molybdenum
   number:      42
   molar:       95.96
   position:    5
   group:       Element Transition d
   electrons:   [2, 8, 18, 13, 1]
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
