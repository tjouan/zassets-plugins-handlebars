require File.expand_path('../lib/zassets/plugins/handlebars/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'zassets-plugins-handlebars'
  s.version     = ZAssets::Plugins::Handlebars::VERSION.dup
  s.summary     = "zassets-plugins-handlebars-#{ZAssets::Plugins::Handlebars::VERSION}"
  s.description = 'Handlebars JST processor for zassets.'
  s.license     = 'BSD-3-Clause'
  s.homepage    = 'https://rubygems.org/gems/zassets-plugins-handlebars'

  s.author      = 'Thibault Jouan'
  s.email       = 'tj@a13.fr'

  s.files       = `git ls-files lib`.split $/
  s.extra_rdoc_files = %w[README.md]

  s.add_dependency 'handlebars_assets', '0.15'
end
