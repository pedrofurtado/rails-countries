require 'countries'

module RailsCountries
  module ActionView
    module Helpers
      def countries_alpha2_options
        ISO3166::Country.all.map { |country| [country.translation(I18n.locale), country.alpha2] }
      end
    end
  end
end
