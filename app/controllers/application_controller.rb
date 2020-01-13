require 'securerandom'
class ApplicationController < Sinatra::Base
    
    configure do
        set :public_folder, 'public'
        set :views, 'app/views'
        enable :sessions
        set :sessions_secret, "secret"
    end

    get '/' do 
        erb :helloworld 
    end
end