# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'primes_multiplication/version'

Gem::Specification.new do |spec|
  spec.name          = "Primes Multiplication Table Generator"
  spec.version       = PrimesMultiplication::VERSION
  spec.authors       = ["Baron"]
  spec.email         = ["baronbloomer@gmail.com"]

  spec.summary       = "Draws a multiplication table for prime numbers and user can specify the table size as an argument"
  spec.description   = "Coding challenge given by Funding Circle"
  spec.homepage      = "http://baronbloomer.com/websites"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Declare that the Gem is compatible with
  # version 2.0 or greater
  spec.required_ruby_version = ">= 2.0"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"

  # Usage: spec.add_runtime_dependency "[gem name]", [[version]]
  spec.add_runtime_dependency "terminal-table", ["1.5.2"]

end
