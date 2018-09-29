# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

Gem::Specification.new do |s|
  s.name         = 'simple_assert'
  s.version      = '0.0.1'
  s.summary      = 'Simple utility that can replace rspec for really small apps'
  s.author       = 'Bartek Wilczek'
  s.email        = 'bwilczek@gmail.com'
  s.files        = Dir['lib/**/*.rb']
  s.require_path = 'lib'
  s.homepage     = 'https://github.com/bwilczek/simple_assert'
  s.license      = 'MIT'
  s.required_ruby_version = '~> 2.4'
  s.add_dependency 'colorize', '~> 0.7'
  s.add_dependency 'sourcify', '~> 0.5'
  s.add_development_dependency 'pry', '~> 0.11'
  s.add_development_dependency 'rspec', '~> 3.7'
  s.add_development_dependency 'rubocop', '~> 0.52'
end
