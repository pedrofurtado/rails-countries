module ActiveModel
  module Validations
    class CountriesAlpha2Validator < EachValidator
      def validate_each(record, attribute, value)
        record.errors.add(attribute, :countries_alpha2_invalid, alpha2: value) if value.present? && (value.is_a?(String) || value.is_a?(Symbol)) && !ISO3166::Country.all.map(&:alpha2).include?(value.to_s)
      end
    end

    module HelperMethods
      def validates_countries_alpha2_of(*attributes)
        validates_with CountriesAlpha2Validator, _merge_attributes(attributes)
      end
    end
  end
end
