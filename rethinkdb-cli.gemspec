# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rethinkdb/cli/version'

Gem::Specification.new do |spec|
  spec.name          = "rethinkdb-cli"
  spec.version       = Rethinkdb::Cli::VERSION
  spec.authors       = ["Rocco Galluzzo"]
  spec.email         = ["rocco@galluzzo.me"]
  spec.summary       = %q{A rethinkdb cli written in Ruby}
  spec.description   = %q{}
  spec.homepage      = "http://github.com/byterussian/rethinkdb-cli"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency('rethinkdb')
  spec.add_dependency('ripl')
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
