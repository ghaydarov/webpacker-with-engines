$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "component_two/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "component_two"
  s.version     = ComponentTwo::VERSION
  s.authors     = [""]
  s.email       = [""]
  s.homepage    = "http://google.com"
  s.summary     = "Summary of Component 2."
  s.description = "Description of Component 2."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.6", ">= 5.1.6.1"

  s.add_development_dependency "sqlite3"
end
