require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Lapromo02
  class Application < Rails::Application

    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

  #Allow cors permite conexiones de distintas ips      

      config.i18n.enforce_available_locales = false
      config.i18n.available_locales = [:es, :en]
      config.i18n.default_locale = :es
      I18n.enforce_available_locales = false
      I18n.locale = :es
      FlickRaw.api_key="e225d59815e398362743fc055217adf7"
      FlickRaw.shared_secret="ba5b7c3f39b9705a"


    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    config.middleware.insert_before 0, Rack::Cors do
      allow do
         origins '*'
         resource '*', :headers => :any, :methods => [:get, :post, :options]
       end
    end
    
  end
end
