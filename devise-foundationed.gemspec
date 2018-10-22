
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "devise/foundationed/version"

Gem::Specification.new do |spec|
  spec.name          = "devise-foundationed"
  spec.version       = Devise::Foundationed::VERSION
  spec.authors       = ["Pawel Osiczko"]
  spec.email         = ["p.osiczko@tetrapyloctomy.org"]

  spec.summary       = %q{Generates nicer views for Devise that use Foundation 6 with XY Grid}
  spec.description   = %q{This gem generates nicer default views styled with Foundation so you have a bit of a better starting point for your app. }
  spec.homepage      = "https://github.com/posiczko/devise-foundationed"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/posiczko/devise-foundationed"
    # spec.metadata["changelog_uri"] = "https://raw.githubusercontent.com/posiczko/devise-foundationed/Chane"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16.6"
  spec.add_development_dependency "rake", "~> 12.3.1"
  spec.add_development_dependency "rspec", "~> 3.8"
end
