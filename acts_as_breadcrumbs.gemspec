#encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'version'

Gem::Specification.new do |spec|
  spec.name           = "acts_as_breadcrumbs"
  spec.version        = ActsAsBreadcrumbs::VERSION
  spec.authors        = ["Zac Zheng"]
  spec.email          = ["zac@zenpow.com"]
  spec.description    = %q{The Rails plugin acts_as_breadcrumbs gemified.}
  spec.summary        = %q{Uses an acts_as_tree model and creates a breadcrumbs trail attribute using a base attribute.}
  spec.homepage       = "https://github.com/zaczheng/acts_as_breadcrumbs"
  spec.license        = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

end
