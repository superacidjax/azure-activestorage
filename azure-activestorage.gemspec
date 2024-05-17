# frozen_string_literal: true

require_relative "lib/azure/active_storage/version"

Gem::Specification.new do |spec|
  spec.name = "super-azure-activestorage"
  spec.version = Azure::ActiveStorage::VERSION
  spec.authors = ["Brian Dear"]
  spec.email = ["superacidjax@me.com"]

  spec.summary = "Azure blob backend for Active Storage"
  spec.homepage = "https://github.com/superacidjax/azure-activestorage"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.3"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  spec.add_dependency "rexml"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
