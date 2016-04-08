# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'snake_camel/version'

Gem::Specification.new do |spec|
  spec.name          = "snake_camel"
  spec.version       = SnakeCamel::VERSION
  spec.authors       = ["Balint Bejczi"]
  spec.email         = ["bejczi.balint@gmail.com"]

  spec.summary       = %q{converts string to snake case}
  spec.description   = %q{converts string to snake case}
  spec.homepage      = 'https://github.com/bejczib/snake_camel'
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'http://mygemserver.com'
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = ["lib/snake_camel.rb", "lib/snake_camel/instance_methods.rb"]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end


