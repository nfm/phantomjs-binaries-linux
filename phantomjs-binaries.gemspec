# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'phantomjs_binaries/version'

Gem::Specification.new do |spec|
  spec.name          = "phantomjs-binaries"
  spec.version       = Phantomjs::Binaries::VERSION
  spec.authors       = ["Nicholas Firth-McCoy"]
  spec.email         = ["nicholas@2suggestions.com.au"]
  spec.summary       = %q{Package phantomjs binaries into a gem}
  spec.homepage      = "https://github.com/nfm/phantomjs-binaries"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
end
