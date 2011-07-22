source 'http://rubygems.org'

# This line in gemfile overrides .rvmrc.
gem 'rails', '3.1.0.rc1'

gem 'sqlite3-ruby', :require => 'sqlite3'

gem 'wirble'	# added manually by RTH to support enhanced console & irb features
gem 'taps' 		# added manually by RTH to support pushing data up to Heroku
gem 'faker'   # generates lorem ipsum text, etc.

# added manually by RTH to support testing
group :development do
  gem 'rspec-rails', '2.6.1' # bumped from 2.0.1 to 2.6.1 by RTH
end

group :test do
  gem 'rspec', '2.6.0' # bumped from 2.0.1 to 2.6.0 by RTH
  gem 'webrat', '0.7.1'
  gem 'spork', '0.8.4'
end
