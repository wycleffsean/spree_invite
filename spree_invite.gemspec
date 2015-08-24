$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "spree_invite/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "spree_invite"
  s.version     = Spree::Invite::VERSION
  s.authors     = ["Sean Carey"]
  s.email       = ["wycleffsean@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of SpreeInvite."
  s.description = "TODO: Description of SpreeInvite."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.0"
  s.add_dependency "virtus", "~> 1.0.0"

  s.add_development_dependency "sqlite3"
end
