require "rails/generators"

module Devise
  module Views
    class FoundationedGenerator < Rails::Generators::Base
      desc "Copies views style for Foundation 6.4"
      
      source_root File.expand_path("../../../../", __FILE__ )
      
      def copy_views
        directory "app/views/devise", "app/views/devise"
      end
    end
  end
end
