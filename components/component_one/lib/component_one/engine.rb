module ComponentOne
  class Engine < ::Rails::Engine
    isolate_namespace ComponentOne

      initializer "webpacker.proxy" do |app|
        insert_middleware = begin
                            ComponentOne.webpacker.config.dev_server.present?
                          rescue
                            nil
                          end
        next unless insert_middleware

        app.middleware.insert_before(
          0, Rails::VERSION::MAJOR >= 5 ?
          Webpacker::DevServerProxy : "Webpacker::DevServerProxy",
          ssl_verify_none: true,
          webpacker: ComponentOne.webpacker
        )
      end
      
      # initializer "webpacker.static" do |app|
      #   app.config.middleware.use(
      #     Rack::Static,
      #     urls: ["/component_one/c-packs"], root: ROOT_PATH.join("public")
      #   )
      # end      

  end
end