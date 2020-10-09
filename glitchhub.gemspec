require_relative 'lib/glitchhub/version'

Gem::Specification.new do |spec|
  spec.name          = "glitchhub"
  spec.version       = Glitchhub::VERSION
  spec.authors       = ["Bernard Pineda"]
  spec.email         = ["_@bernardopineda.mx"]

  spec.summary       = %q{GitHub API client in ruby.}
  spec.homepage      = "https://github.com/bpineda/glitchhub"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.6.1")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/bpineda/glitchhub"
  spec.metadata["changelog_uri"] = "https://github.com/bpineda/glitchhub/blob/master/CHANGELOG.md"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_runtime_dependency 'faraday'
  spec.add_runtime_dependency 'oj'
  spec.add_runtime_dependency 'vcr'
end
