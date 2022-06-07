require_relative 'lib/proxycurl/version'

Gem::Specification.new do |spec|
  spec.name          = "proxycurl"
  spec.version       = Proxycurl::VERSION
  spec.authors       = ["ayoshimiya"]
  spec.email         = ["ayoshimiya@gmail.com"]

  spec.summary       = %q{Simple client to use nubela proxycurl services}
  spec.description   = %q{This gem will potentially use all of the proxycurl apis for easier integration with another project}
  spec.homepage      = "https://github.com/Second-Degree/proxycurl"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Second-Degree/proxycurl"
  spec.metadata["changelog_uri"] = "https://github.com/Second-Degree/proxycurl"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty"
end
