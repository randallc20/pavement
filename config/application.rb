require_relative "boot"

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_mailbox/engine"
require "action_text/engine"
require "action_view/railtie"
require "action_cable/engine"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module AirbnbClone
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    # Don't generate system test files.
    config.generators.system_tests = nil

    # Stripe key
    config.stripe.secret_key =
      "sk_test_51LZGPJD19aVTh8nX5xhearnTMNUBxoKze7MVbRTl41ogF3puZjEyiAFOydlWBCnanbyleA4rdR1OoE6beiMOmqgI00b9r2Bz33"
    config.stripe.publishable_key =
      "pk_test_51LZGPJD19aVTh8nXarXrwrFzfbBsc4Xzrdp6jYP2V0NrbCvRq6I0i3eawMtdKbLYeLSctie5Twy1tZJR9wXuBe5000Z9O983R1"
  end
end
