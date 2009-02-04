ENV["RAILS_ENV"] = "test"
require File.join(File.dirname(__FILE__), "/../../../../config/environment")
require 'spec/rails'
require 'i18n_backend_database'
 
Spec::Runner.configure do |config|
  config.use_transactional_fixtures = true
  config.use_instantiated_fixtures  = false
  
  config.before(:each) do
    Locale.reset_default_locale
  end
  
end
