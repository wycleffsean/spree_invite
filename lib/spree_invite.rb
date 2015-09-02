require "spree_invite/configuration"
require "spree_invite/application_form"
require "spree_invite/engine"

module Spree
  module Invite
      class << self
        attr_writer :configuration
      end

      def self.configuration
        @configuration ||= Configuration.new
      end
      
      def self.configure
        yield configuration
      end
  end
end
