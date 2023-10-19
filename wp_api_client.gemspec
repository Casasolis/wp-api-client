# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wp_api_client/version'

Gem::Specification.new do |spec|
  spec.name          = "wp-api-client"
  spec.version       = WpApiClient::VERSION
  spec.authors       = ["Duncan Brown"]
  spec.email         = ["duncanjbrown@gmail.com"]

  spec.summary       = %q{A read-only client for the WordPress REST API (v2).}
  spec.homepage      = "https://github.com/duncanjbrown/wp-api-client"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
 
  spec.add_dependency "faraday"
  spec.add_dependency "faraday_middleware"
  spec.add_dependency "faraday-http-cache"
  spec.add_dependency "simple_oauth"
  spec.add_dependency "typhoeus"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock"
end
