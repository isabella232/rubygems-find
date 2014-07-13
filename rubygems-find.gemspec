Gem::Specification.new do |spec|
  spec.authors = ["Quinn Slack"]
  spec.description = %q{Library and program for finding all RubyGems gemspecs in a directory tree}
  spec.email = ['sqs@sourcegraph.com']
  spec.files += Dir.glob("{bin,lib,spec}/**/*.rb")
  spec.homepage = 'https://sourcegraph.com/github.com/sourcegraph/rubygems-find'
  spec.licenses = ['MIT']
  spec.name = 'rubygems-find'
  spec.require_paths = ['lib']
  spec.executables = ['rubygems-find.rb']
  spec.required_ruby_version = '>= 1.9.2'
  spec.required_rubygems_version = '>= 1.3.5'
  spec.summary = "Find all RubyGems gemspecs in a directory tree"
  spec.version = '0.0.4'
end