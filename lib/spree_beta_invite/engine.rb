module Spree
  module BetaInvite
    class Engine < ::Rails::Engine
      isolate_namespace Spree

      def self.activate
        Dir.glob( Rails.root + 'app/**/*_decorator*.rb')) do |p|
          Rails.configuration.cache_classes ? require(p) : load(p)
        end
      end

      config.to_prepare &method(:activate).to_proc
    end
  end
end
