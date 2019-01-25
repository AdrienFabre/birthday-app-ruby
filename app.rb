require 'sinatra/base'
require_relative './lib/calculator'

class Birthday < Sinatra::Base

get "/" do
  erb :index
end

post "/birthday" do
  @name = params[:name]
  @day = params[:day]
  @month = params[:month]
  @time_left = Calculator.new(@day,@month).time_left
  erb :birthday
end



run! if app_file == $0

end
