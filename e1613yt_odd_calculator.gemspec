# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'e1613yt_odd_calculator/version'

Gem::Specification.new do |spec|
  spec.name          = "e1613yt_odd_calculator"
  spec.version       = E1613ytOddCalculator::VERSION
  spec.authors       = ["terra_yucco"]
  spec.email         = ["terashima.yuko+rb@gmail.com"]

  spec.summary       = %q{An odd calculator for the numbers in the life.}
  spec.description   = %q{Calculate BMI, live dates, current age.}

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
