$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "spree_beta_invite/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "spree_beta_invite"
  s.version     = SpreeBetaInvite::VERSION
  s.authors     = ["Sean Carey"]
  s.email       = ["wycleffsean@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of SpreeBetaInvite."
  s.description = "TODO: Description of SpreeBetaInvite."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.3"

  s.add_development_dependency "sqlite3"
end
