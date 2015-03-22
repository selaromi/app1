$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "app1/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "app1"
  s.version     = App1::VERSION
  s.authors     = ["Ignacio"]
  s.email       = ["ignacio.maldonado"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of App1."
  s.description = "TODO: Description of App1."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.0"

  s.add_development_dependency "sqlite3"
end
