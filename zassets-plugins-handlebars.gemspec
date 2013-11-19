$:.unshift File.expand_path('../lib', __FILE__)
require 'zassets/plugins/handlebars/version'

Gem::Specification.new do |s|
  s.name        = 'zassets-plugins-handlebars'
  s.version     = ZAssets::Plugins::Handlebars::VERSION
  s.summary     = "zassets-plugins-handlebars-#{ZAssets::Plugins::Handlebars::VERSION}"
  s.description = <<-eoh.gsub(/^ +/, '')
    Handlebars JST processor for zassets.
  eoh
  s.homepage    = 'https://rubygems.org/gems/zassets-plugins-handlebars'

  s.author      = 'Thibault Jouan'
  s.email       = 'tj@a13.fr'

  s.files       = `git ls-files`.split "\n"

  s.add_dependency 'handlebars_assets', '~> 0.15'
end
