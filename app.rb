require 'sinatra/base'

class Birthday < Sinatra::Base

get "/" do
  erb :index
end

post "/birthday" do
  @name = params[:name]
  @day = params[:day]
  @month = params[:month]
  start_date = Time.now
  end_date =  Time.new(Time.now.year, @month.to_i, @day.to_i)
    if end_date < start_date
        end_date += 365*24*60*60
    end
  @time_left = (end_date - start_date).to_i/60/60/24
  erb :birthday
end



run! if app_file == $0

end
