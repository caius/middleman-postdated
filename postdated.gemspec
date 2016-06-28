$:.push File.expand_path("../lib", __FILE__)
require "postdated/version"

Gem::Specification.new do |s|
  s.name        = "postdated"
  s.version     = Postdated::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Caius Durling"]
  s.email       = %w(dev@caius.name)
  s.summary     = %{Sets missing resource dates from filenames}
  s.description = %{Reads the filename of your site resources which don't have dates set, and sets them according to filename.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_runtime_dependency "middleman-core", "~> 4.1"

  s.add_development_dependency "rake"
end
