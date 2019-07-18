# validates-countries

Rails/ActiveRecord validations for [countries](https://github.com/hexorx/countries) gem.

[![Gem Version](https://badge.fury.io/rb/validates-countries.svg)](https://badge.fury.io/rb/validates-countries)
[![Gem](https://img.shields.io/gem/dt/validates-countries.svg)]()
[![license](https://img.shields.io/github/license/pedrofurtado/validates-countries.svg)]()

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'validates-countries'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install validates-countries

## Usage

### ActiveRecord models
```ruby
class Person < ActiveRecord::Base
  validates :my_attribute, countries_alpha2: true
  # or
  validates_countries_alpha2_of :my_attribute
end
```

### Plain Old Ruby Objects
```ruby
class Person
  include ActiveModel::Model

  validates :my_attribute, countries_alpha2: true
  # or
  validates_countries_alpha2_of :my_attribute
end
```

## I18n

To customize your error messages you can create a locale file like this:

```yaml
en:
  countries:
    errors:
      messages:
        alpha2_invalid: 'is not a valid country alpha2 code'
```

## Something wrong with the translations? Contribute it!

Send a pull request! Fix the translations or create it for some missing locale. Help us to improves the quality of translations!
