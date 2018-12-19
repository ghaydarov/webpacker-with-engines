$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "component_one/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "component_one"
  s.version     = ComponentOne::VERSION
  s.authors     = [""]
  s.email       = [""]
  s.homepage    = "https://google.com"
  s.summary     = "Summarys of ComposnentOne."
  s.description = "Description sof ComponentOne."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.6", ">= 5.1.6.1"
  s.add_dependency "webpacker"

  s.add_development_dependency "sqlite3"

end
