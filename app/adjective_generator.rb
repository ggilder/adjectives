require 'sinatra/base'

Dir.glob(File.join(File.dirname(__FILE__), 'adjective_generator', '*.rb')).each { |f| require f }

module AdjectiveGenerator
  class App < Sinatra::Base
    get '/' do
      AdjectiveGenerator::Adjective.random
    end
  end
end