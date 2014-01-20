$: << File.dirname(__FILE__) + "/lib"
require "vanity/version"

Gem::Specification.new do |spec|
  spec.name           = "vanity"
  spec.version        = Vanity::VERSION
  spec.author         = "Assaf Arkin"
  spec.email          = "assaf@labnotes.org"
  spec.homepage       = "http://vanity.labnotes.org"
  spec.license        = "MIT"
  spec.summary        = "Experience Driven Development framework for Ruby"
  spec.description    = "Mirror, mirror on the wall ..."
  spec.post_install_message = "To get started run vanity --help"

  spec.files         = `git ls-files`.split("\n")
  spec.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  spec.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.extra_rdoc_files = "README.rdoc", "CHANGELOG"
  spec.rdoc_options     = "--title", "Vanity #{spec.version}", "--main", "README.rdoc",
                          "--webcvs", "http://github.com/assaf/#{spec.name}"

  spec.add_development_dependency "bundler", "~> 1.3"
  # Math
  spec.add_development_dependency "integration"
  spec.add_development_dependency "rubystats"
  # Persistence
  spec.add_development_dependency "redis", ">2.1"
  spec.add_development_dependency "redis-namespace", ">1.1.0"
  spec.add_development_dependency "bson_ext"
  spec.add_development_dependency "mongo"
  spec.add_development_dependency "mysql"
  spec.add_development_dependency "sqlite3"
  # APIs
  spec.add_development_dependency "garb"

  spec.required_ruby_version = ">= 1.8.7"
end
