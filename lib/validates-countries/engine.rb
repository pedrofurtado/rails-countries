require 'rails'
require 'rails-countries/helpers'

module RailsCountries
  class Engine < ::Rails::Engine
    initializer 'rails-countries.engine' do
      ActionView::Base.send :include, RailsCountries::ActionView::Helpers
    end
  end
end
