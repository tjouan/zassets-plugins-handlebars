module ZAssets
  module Plugins
    module Handlebars
      class Registrant
        def initialize(config)
          @config         = config
          @plugin_config  = @config[:plugins]
            .find   { |e| e[:name].to_sym == :handlebars }
            .reject { |k, v| k == :name }
        end

        def register
          require 'handlebars_assets'

          HandlebarsAssets::Config.template_namespace = 'JST'

          @plugin_config.each do |k, v|
            HandlebarsAssets::Config.send "#{k}=".to_sym, v
          end

          @config[:paths] << HandlebarsAssets.path
        end
      end
    end
  end
end
