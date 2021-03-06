# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'supso/version'

Gem::Specification.new do |spec|
  spec.authors = ["Super Source"]
  spec.description = "The command line interface for Super Source (supso)."
  spec.email = ["admin@supso.org"]
  spec.executables = ["supso"]
  spec.homepage = "http://supso.org/"
  spec.name = "supso"
  spec.summary = "The command line interface for Super Source - supso."
  spec.version = Supso::VERSION

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) || f.match(%r{supported_source}) }
  spec.bindir = "bin"
  spec.require_paths = ["lib"]

  spec.post_install_message = "You've installed supso, the command line interface for Super Source.\nTo get the client tokens for a project, run `supso update` from inside the project's directory.\nFor more info, run `supso help` or visit supso.org"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.3"
  spec.add_dependency "super_source", ">= 0.10.0"
end
