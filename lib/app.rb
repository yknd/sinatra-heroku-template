require 'models'

class MyApp < Sinatra::Base

  configure :development do
    Bundler.require :development
    register Sinatra::Reloader
    Slim::Engine.set_default_options pretty: true
    Mongoid.logger = Logger.new(STDOUT)
    Mongoid.logger.level = Logger::INFO
  end

  configure :production do
    Mongoid.logger = false
  end

  configure do
    set :root, File.expand_path('../../', __FILE__)
    Mongoid.load! File.join(settings.root, 'config', 'mongoid.yml')
  end

  get '/' do
    slim :index
  end

  get '/games/:field' do
    content_type :text
    game = Game.first
    game ? "#{game.__send__ params[:field]}" : "nil"
  end

  get '/css/:file.css' do
    scss params[:file].to_sym
  end
end
