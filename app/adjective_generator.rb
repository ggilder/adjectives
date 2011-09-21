require 'sinatra/base'

Dir.glob(File.join(File.dirname(__FILE__), 'adjective_generator', '*.rb')).each { |f| require f }

module AdjectiveGenerator
  class App < Sinatra::Base
    set :root, File.dirname(__FILE__)
    get '/' do
      @word = AdjectiveGenerator::Adjective.random
      erb :index
    end
  end
end