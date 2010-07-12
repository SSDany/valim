Gem::Specification.new do |s|
  s.name        = "valim"
  s.version     = "0.0.4"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Carl Lerche"]
  s.email       = ["me@carllerche.com"]
  s.homepage    = "http://github.com/carllerche/valim"
  s.summary     = "Adds Valimisms to your ruby"
  s.description = "This gem is a must if you want to be awesome like José Valim."

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "valim"

  s.files        = Dir.glob("lib/**/*") + %w(LICENSE README.md)
  s.require_path = 'lib'
end