module App1
  class Engine < ::Rails::Engine
    isolate_namespace App1

    initializer 'App1.append_migrations' do |app|
      unless app.root.to_s == root.to_s
        config.paths["db/migrate"].expanded.each do |path|
          app.config.paths["db/migrate"].push(path)
        end
      end
    end

    initializer 'App1.asset_precompile_paths' do |app|
      app.config.assets.precompile += ["App1/manifests/*"]
    end
  end
end
