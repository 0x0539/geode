# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'geode/version'

Gem::Specification.new do |spec|
  spec.name          = "geode"
  spec.version       = Geode::VERSION
  spec.authors       = ["Sebastian Goodman"]
  spec.email         = ["sebastian.goodman@gmail.com"]
  spec.summary       = %q{A library for working with Geocoordinates.}
  spec.description   = %q{Makes it easier to build software to support Geocoordinates in Ruby.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
