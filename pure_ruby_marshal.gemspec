# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pure_ruby_marshal/version'

Gem::Specification.new do |spec|
  spec.name          = "pure_ruby_marshal"
  spec.version       = PureRubyMarshal::VERSION
  spec.authors       = ["Ilya Bylich","Michael Stangel"]
  spec.email         = ["ibylich@gmail.com"]

  spec.summary       = %q{Implementation of Marshal.dump and .load in Ruby}
  spec.description   = %q{Implementation of Marshal.dump and .load in Ruby}
  spec.homepage      = "https://ilyabylich.svbtle.com/ruby-marshalling-from-a-to-z"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
