source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.2'

gem 'rails', '~> 5.2.3'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.3'
gem 'jbuilder', '~> 2.9', '>= 2.9.1'

gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  gem 'rspec-rails', '~> 3.8'
  gem 'pry-byebug', '~> 3.4'
  gem 'pry-rails', '~> 0.3.9'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
