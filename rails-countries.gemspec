# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails-countries/version'

Gem::Specification.new do |spec|
  spec.name          = 'rails-countries'
  spec.version       = RailsCountries::VERSION
  spec.authors       = ['Pedro Furtado']
  spec.email         = ['pedro.felipe.azevedo.furtado@gmail.com']
  spec.summary       = %q{Integration between Rails and countries gem.}
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/pedrofurtado/rails-countries'
  spec.license       = 'MIT'
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ['lib']
  spec.add_dependency 'rails'
  spec.add_dependency 'countries'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
end
