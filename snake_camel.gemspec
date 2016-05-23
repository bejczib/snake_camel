# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'snake_camel/version'

Gem::Specification.new do |spec|
  spec.name          = "snake_camel"
  spec.version       = SnakeCamel::VERSION
  spec.authors       = ["Balint Bejczi"]
  spec.email         = ["bejczi.balint@gmail.com"]

  spec.summary       = %q{converion between CamelCase and snake_case}
  spec.description   = %q{converts CamelCase to snake_case and backwardss}
  spec.homepage      = 'https://github.com/bejczib/snake_camel'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end


