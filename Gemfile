source 'http://rubygems.org'

# This line in gemfile overrides .rvmrc.
gem 'rails', :git => 'git://github.com/rails/rails.git', :branch => '3-1-stable'

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
  gem 'spork', '0.9.0.rc9' # bumped to this version per https://rubygems.org/gems/spork/versions/0.9.0.rc9
  gem 'rb-fsevent'
  gem 'guard-spork'        # Trying guard instead of Autotest per Hashrocket advice.
end
