# frozen_string_literal: true


require_relative 'lib/ukraine_phone_formatter/version'

Gem::Specification.new do |spec|
  spec.name = 'ukraine_phone_formatter'
  spec.version = UkrainePhoneFormatter::VERSION
  spec.authors = ['Andrii Stavskyi']
  spec.email = ['an.stawski@outlook.com']

  spec.summary = 'A simple gem for formatting Ukrainian phone numbers.'
  spec.description = 'This gem allows you to format Ukrainian phone numbers from various input formats into a standard format.'
  spec.homepage = 'https://github.com/stkossman/ukraine_phone_formatter'
  spec.license = 'MIT'

  spec.files = Dir.glob('lib/**/*.rb') + Dir.glob('exe/*') + %w[README.md]
  spec.bindir = 'exe'
  spec.executables = Dir.glob('exe/*') { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rake', '~> 13.0'

  spec.metadata["allowed_push_host"] = "https://rubygems.org"
  spec.metadata["source_code_uri"] = "https://github.com/stkossman/ukraine_phone_formatter"
end