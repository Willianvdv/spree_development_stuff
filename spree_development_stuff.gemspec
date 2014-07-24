# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spree_development_stuff/version'

Gem::Specification.new do |spec|
  spec.name          = "spree_development_stuff"
  spec.version       = SpreeDevelopmentStuff::VERSION
  spec.authors       = ["Willian van der Velde"]
  spec.email         = ["mail@willian.io"]
  spec.summary       = %q{Development for spree to make out lives bearable}
  spec.homepage      = "http://www.willian.io"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
