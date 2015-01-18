source 'https://rubygems.org'

ruby '2.2.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.9'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

gem 'slim-rails'
gem 'bourbon'
gem 'neat'
gem 'showcase'
gem 'hermitage'
gem 'copycopter_client', github: 'stefanoverna/copycopter-ruby-client'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
gem 'unicorn'

gem 'activeadmin', github: 'gregbell/active_admin'
gem 'devise'
gem 'activeadmin-gallery', github: 'justonestep/activeadmin-gallery', branch: 'feature/rails-4.1.5'
gem 'activeadmin-dragonfly', github: 'stefanoverna/activeadmin-dragonfly'
gem 'activeadmin-extra', github: 'stefanoverna/activeadmin-extra'
gem 'activeadmin-globalize', github: 'stefanoverna/activeadmin-globalize'
gem 'activeadmin-sortable-tree', github: 'welaika/activeadmin-sortable-tree'
gem 'activeadmin-seo', github: 'nebirhos/activeadmin-seo', branch: 'master'
gem 'fog'
gem 'unf'
gem 'rack-cache'
gem 'rack-cors', :require => 'rack/cors'

group :staging, :production do
  gem 'pg'
  gem 'rails_12factor'
  gem 'newrelic_rpm'
end

group :development do
  gem 'sqlite3'
end

