# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'utc_rpn_calc/version'

Gem::Specification.new do |spec|
  spec.name          = "utc_rpn_calc"
  spec.version       = UtcRpnCalc::VERSION
  spec.authors       = ["Colin Rymer"]
  spec.email         = ["colin.rymer@gmail.com"]
  spec.summary       = %q{A simple RPN style calculator that operates on unsigned hex numbers}
  spec.description   = spec.summary
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
