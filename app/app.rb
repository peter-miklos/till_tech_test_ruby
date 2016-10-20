require 'sinatra/base'
require_relative 'data_mapper_setup'

ENV["RACK_ENV"] ||= "development"

class TillApp < Sinatra::Base
  get '/' do
    redirect '/orders'
  end

  get '/orders' do
    erb :'orders/index'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
