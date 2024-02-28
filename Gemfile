source "https://rubygems.org"

ruby "3.2.2"

gem "rails", "~> 7.1.2"
gem "sprockets-rails"
gem "mysql2", "~> 0.5.6"
gem "puma", ">= 5.0"
gem "jsbundling-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "cssbundling-rails"
gem "jbuilder"
# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"
# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"
gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "bootsnap", require: false
# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"
gem "devise"
gem "slim-rails"
gem "validate_url"
gem "rails-i18n", "~> 7.0.0"

group :development, :test do
  gem "debug", platforms: %i[ mri windows ]
  gem "factory_bot_rails"
end

group :development do
  gem "web-console"
  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end

group :production do
  gem "google-cloud-storage", "~> 1.11", require: false
end
