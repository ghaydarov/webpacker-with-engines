module ComponentOne
  module ApplicationHelper
    include ::Webpacker::Helper

    def current_webpacker_instance
      ComponentOne.webpacker
    end

  end
end
