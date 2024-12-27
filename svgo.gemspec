# frozen_string_literal: true

require_relative "lib/svgo/version"

Gem::Specification.new do |spec|
  spec.name = "svgo-rb"
  spec.version = Svgo::VERSION
  spec.authors = ["Alexandra Østermark"]
  spec.email = ["alex.cramt@gmail.com"]

  spec.summary = ""
  spec.description = ""
  spec.homepage = "https://github.com/cramt/svgo-rb"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  spec.extensions = ["ext/svgo/extconf.rb"]
  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }

  spec.bindir = "exe"
  spec.executables = []
  spec.require_paths = ["lib"]

  spec.add_dependency "npm_ext", "0.1.6"
end
