# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/timeline/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-timeline"
  spec.version       = Ruboty::Timeline::VERSION
  spec.authors       = ["mzp"]
  spec.email         = ["mzpppp@gmail.com"]

  spec.summary       = %q{ruboty-timeline}
  spec.description   = %q{ruboty-timeline}
  spec.homepage      = 'https://github.com/mzp/ruboty-timeline'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "ruboty"
  spec.add_dependency "ruboty-slack"
  spec.add_dependency "slack-notifier"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
