# frozen_string_literal: true

require "rails/engine"
require "devise/foundationed/version"
require "devise/generators/foundationed_generator"

module Devise
  module Foundationed
    # This module is responsibel for Devise views generation using
    # Zurb Foundation framework
    class Engine < ::Rails::Engine
    end
  end
end
