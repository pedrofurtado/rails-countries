# rails-countries

Integration between Rails and [countries](https://github.com/hexorx/countries) gem.

[![Gem Version](https://badge.fury.io/rb/validates-countries.svg)](https://badge.fury.io/rb/validates-countries)
[![Gem](https://img.shields.io/gem/dt/validates-countries.svg)]()
[![license](https://img.shields.io/github/license/pedrofurtado/validates-countries.svg)]()

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails-countries'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails-countries

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

### Views

#### Helpers
```erb
<%= i18n_country_name_by_alpha2('US') %>
<%= i18n_country_name_by_alpha2('US', 'pt-BR') %>
```

#### Rails Form helpers
```erb
<%= select_tag(:my_attribute, countries_alpha2_options) %>
<%= select_tag(:my_attribute, countries_alpha2_options('pt-BR')) %>
```

#### SimpleForm
```erb
<%= f.input :my_attribute, collection: countries_alpha2_options %>
<%= f.input :my_attribute, collection: countries_alpha2_options('pt-BR') %>
```

## I18n

To customize your error messages you can create a locale file like this:

```yaml
en:
  errors:
    messages:
      countries_alpha2_invalid: '%{alpha2} is not valid'
```

## Something wrong with the translations? Contribute it!

Send a pull request! Fix the translations or create it for some missing locale. Help us to improves the quality of translations!
