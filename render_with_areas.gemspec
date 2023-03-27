# frozen_string_literal: true

require_relative "lib/render_with_areas/version"

Gem::Specification.new do |spec|
  spec.name = "render_with_areas"
  spec.version = RenderWithAreas::VERSION
  spec.authors = ["Jens Balvig"]
  spec.email = ["jens@balvig.com"]

  spec.summary = "Easy rendering of partials with multiple content areas"
  spec.description = "Easy rendering of partials with multiple content areas"
  spec.homepage = "https://github.com/balvig/render_with_areas"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/balvig/render_with_areas"
  spec.metadata["changelog_uri"] = "https://github.com/balvig/render_with_areas/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end