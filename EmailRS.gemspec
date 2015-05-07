# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'EmailRS/version'

Gem::Specification.new do |spec|
  spec.name          = "EmailRS"
  spec.version       = EmailRS::VERSION
  spec.authors       = ["Mohammed alnakli"]
  spec.email         = ["hassoun@outlook.com"]
  spec.summary = %q{Parses an email input and classifies it as a valid ship position.}
  spec.description = %q{Parses an email input and classifies it as a valid ship position.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
