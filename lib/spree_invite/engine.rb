module Spree
  module Invite
    class Engine < ::Rails::Engine
      isolate_namespace Spree
      engine_name 'spree_invite'

      def self.activate
        Dir.glob( Rails.root + 'app/**/*_decorator*.rb') do |p|
          Rails.configuration.cache_classes ? require(p) : load(p)
        end
      end

      initializer :append_migrations do |app|
        unless app.root.to_s.match root.to_s
          config.paths["db/migrate"].expanded.each do |expanded_path|
            app.config.paths["db/migrate"] << expanded_path
          end
        end
      end

      config.to_prepare &method(:activate).to_proc
    end
  end
end
