module ComponentTwo
  module ApplicationHelper
    include ::Webpacker::Helper

    def current_webpacker
      ComponentTwo.webpacker
    end

  end
end
