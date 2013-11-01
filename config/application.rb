require File.expand_path('../boot', __FILE__)

require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "sprockets/railtie"

Bundler.require(:default, Rails.env)

module Ecs
  class Application < Rails::Application
    config.action_controller.permit_all_parameters = true
    config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif)
  end
end
