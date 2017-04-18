require 'rails'
require 'summernote-ext-addclass-rails/version'

module SummernoteExtAddclassRails
  module Rails
    # Rails >= 3.1
    if (::Rails::VERSION::MAJOR > 3) ||
       (::Rails::VERSION::MAJOR == 3 && ::Rails::VERSION::MINOR >= 1)
       require 'summernote-ext-addclass-rails/engine'
    else
      require 'summernote-ext-addclass-rails/railtie'
    end
  end
end
