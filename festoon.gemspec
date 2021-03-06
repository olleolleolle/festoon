# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'festoon/version'

Gem::Specification.new do |spec|
  spec.name          = "festoon"
  spec.version       = Festoon::VERSION
  spec.authors       = ["Stephen Best"]
  spec.email         = ["bestie@gmail.com"]
  spec.summary       = %q{Tools for better object composition and decoration}
  spec.homepage      = "https://github.com/bestie/festoon"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry", "~> 0.10"
  spec.add_development_dependency "awesome_print", "~> 1.2"
end
