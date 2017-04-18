module SummernoteExtAddclassRails
  module Rails
    class Engine < ::Rails::Engine
      initializer 'summernote-ext-addclass-rails.assets.precompile' do |app|
        if defined? Sprockets::Rails
          # sprockets-rails 3 tracks down the calls to `font_path` and `image_path`
          # and automatically precompiles the referenced assets.
          unless Sprockets::Rails::VERSION.starts_with?('3')
            app.config.assets.precompile << /\.(?:eot|woff|ttf)$/
          end
        end
      end
    end
  end
end
