module ComponentTwo
  class Engine < ::Rails::Engine
    isolate_namespace ComponentTwo


    # initializer "webpacker.proxy" do |app|
    #     insert_middleware = begin
    #                         ComponentTwo.webpacker.config.dev_server.present?
    #                       rescue
    #                         nil
    #                       end
    #     next unless insert_middleware

    #     app.middleware.insert_before(
    #       0, "Webpacker::DevServerProxy",
    #       ssl_verify_none: true,
    #       webpacker: ComponentTwo.webpacker
    #     )
    #   end
          
  end
end
