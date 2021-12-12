# frozen_string_literal: true
require 'sinatra/flash'
require 'sinatra/base'
require 'sinatra/reloader'

class Chitter < Sinatra::Base
  enable :method_override
  enable :sessions

  register Sinatra::Flash

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  run! if app_file == $PROGRAM_NAME
end
