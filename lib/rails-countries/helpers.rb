module RailsCountries
  module ActionView
    module Helpers
      def countries_alpha2_options(locale = nil)
        ISO3166::Country.all.map { |country| [country.translation(locale || I18n.locale), country.alpha2] }
      end

      def i18n_country_name_by_alpha2(alpha2, locale = nil)
        ISO3166::Country.new(alpha2).translation(locale || I18n.locale)
      end
    end
  end
end
