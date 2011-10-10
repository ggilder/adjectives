require 'bundler/setup'
Bundler.require(:default)

Dir.glob(File.join(File.expand_path(File.dirname(__FILE__)), 'adjective_generator', '*.rb')).each { |f| require f }

module AdjectiveGenerator
  class App < Sinatra::Base
    set :root, File.dirname(__FILE__)
    register Sinatra::AssetPack

    assets {
      serve '/css', from: 'stylesheets'
      css_compression :sass
      css :application, '/css/application.css', [
        '/css/styles.css'
      ]
    }

    get '/' do
      @word = AdjectiveGenerator::Adjective.random
      erb :index
    end
  end
end