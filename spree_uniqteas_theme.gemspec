# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_uniqteas_theme'
  s.version     = '2.1.0'
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

  s.add_dependency 'spree_core', '~> 2.1.0'

  #s.add_dependency 'spree_auth_devise', '~> 2.1.0'
  s.add_dependency 'sass-rails', '>= 3.2'
  s.add_dependency 'bootstrap-sass', '~> 3.1.1'
  s.add_dependency 'compass-rails'
  s.add_dependency 'sprockets', '<= 2.11.0'
  
  s.add_development_dependency 'capybara', '~> 2.1'
  s.add_development_dependency 'coffee-rails', '~> 4.0.0'  
  s.add_development_dependency 'factory_girl_rails', '~> 4.2.1'
  s.add_development_dependency 'ffaker', '~> 1.16'
  s.add_development_dependency 'rspec-rails',  '~> 2.14.0'
  s.add_development_dependency 'sqlite3'
end
