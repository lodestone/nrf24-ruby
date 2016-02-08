# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nrf24/version'

Gem::Specification.new do |spec|
  spec.name          = "nrf24-ruby"
  spec.version       = NRF24::VERSION
  spec.authors       = ["Rogier Lodewijks"]
  spec.email         = ["rogier@lodewijks.org"]

  spec.summary       = %q{nrf24-ruby is a pure Ruby library for controlling the ubiquitous Nordic nRF24l01(+) radio module.}
  spec.description   = %q{nrf24-ruby is a pure Ruby library for controlling the ubiquitous Nordic nRF24l01(+) radio module. Currently primary target is the Raspberry Pi, but it shouldn't be too hard to port to a different platform (supporting SPI). No webserver, no message bus, no frills, yet a fully functional lib written in clear Ruby.}

  spec.homepage      = "http://www.iotta.nl"
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
  spec.require_paths = ["lib", "lib/nrf24"]
  
  
  spec.add_dependency 'bcm2835'
end
