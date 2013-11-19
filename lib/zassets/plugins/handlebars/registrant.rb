module ZAssets
  module Plugins
    module Handlebars
      class Registrant
        def initialize(config)
          @config = config
        end

        def register
          require 'handlebars_assets'

          @config[:paths] << HandlebarsAssets.path
        end
      end
    end
  end
end
