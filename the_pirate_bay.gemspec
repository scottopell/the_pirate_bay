# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'the_pirate_bay/version'

Gem::Specification.new do |gem|
  gem.name          = "the_pirate_bay"
  gem.version       = ThePirateBay::VERSION
  gem.authors       = ["Javier Saldana"]
  gem.email         = ["javier@tractical.com"]
  gem.description   = %q{Ruby Client for ThePirateBay.se}
  gem.summary       = %q{ThePirateBay.se Client}
  gem.homepage      = "https://github.com/jassa/the_pirate_bay"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  
  gem.add_dependency "faraday",  "~> 0.8.4"
  gem.add_dependency "nokogiri", "~> 1.5.5"
  
  gem.add_development_dependency "rspec", "~> 2.12.0"
  gem.add_development_dependency "webmock", "~> 1.9.0"
end
