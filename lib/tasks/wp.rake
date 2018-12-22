namespace :component_one do
  namespace :webpacker do
    desc "Install deps with yarn"
    task :yarn_install do
      Dir.chdir(File.join(__dir__, "../..")) do
        system "yarn install --no-progress --production"
      end
    end

    desc "Compile JavaScript packs using webpack for production with digests"
    task compile: [:yarn_install, :environment] do
      Webpacker.with_node_env("production") do
          if ComponentOne.webpacker.commands.compile
            puts "Compiled component_one, sir!"
          else
            puts "Sorry no component_one compilation happened, sir!"
            exit!
          end
      end
    end
  end
end



namespace :umbrella do
  namespace :webpacker do
    desc "Install deps with yarn"
    task :yarn_install do
      Dir.chdir(File.join(__dir__, "../..")) do
        system "yarn install --no-progress --production"
      end
    end

    desc "Compile JavaScript packs using webpack for production with digests"
    task compile: [:yarn_install, :environment] do
      Webpacker.with_node_env("production") do
          if Webpacker.commands.compile
            puts "Compiled umbrella, sir!"
          else
            puts "Sorry no umbrella compilation happened, sir!"
            exit!
          end
      end
    end
  end
end
