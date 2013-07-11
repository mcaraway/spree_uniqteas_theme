# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_uniqteas_theme'
  s.version     = '1.3.2'
  s.summary     = 'Theme for my uniqteas store with bootstrap'
  s.description = 'Theme for my uniqteas store with bootstrap'
  s.required_ruby_version = '>= 1.8.7'

  s.author    = 'Michael Caraway'
  # s.email     = 'you@example.com'
  # s.homepage  = 'http://www.spreecommerce.com'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 1.3.2'

  s.add_dependency 'spree_auth_devise', '~> 1.0.0'
  s.add_dependency 'bootstrap-sass', '~> 2.3.2.0'
  s.add_dependency 'compass-rails'
  
  s.add_development_dependency 'capybara', '~> 1.1.2'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'factory_girl', '~> 2.6.4'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.9'
  s.add_development_dependency 'sqlite3'
end
