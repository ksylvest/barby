$:.push File.expand_path("../lib", __FILE__)
require "barby/version"

Gem::Specification.new do |s|
  s.name        = "barby"
  s.version     = Barby::VERSION::STRING
  s.platform    = Gem::Platform::RUBY
  s.summary     = "The Ruby barcode generator"
  s.email       = "toredarell@gmail.com"
  s.homepage    = "http://toretore.github.com/barby"
  s.description = "Barby creates barcodes."
  s.authors     = ['Tore Darell']

  s.rubyforge_project = "barby"

  s.extra_rdoc_files  = ["README.md"]

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.test_files.delete("test/outputter/rmagick_outputter_test.rb")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths     = ["lib"]

  s.add_development_dependency "minitest"
  s.add_development_dependency "bundler"
  s.add_development_dependency "rake"
  s.add_development_dependency "rqrcode"
  s.add_development_dependency "prawn"
  s.add_development_dependency "cairo"
  s.add_development_dependency "dmtx"
end
