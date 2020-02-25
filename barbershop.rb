require "sinatra"
require "sinatra/reloader"
get '/' do
  erb :index
end
post '/' do
  @name = params[:name]
  @phone = params[:phone]
  @date_time = params[:date_time]
  #erb :index
  @title = 'Thank you for rerite'
  @message = "Dear #{@name} , your phone number #{@phone} , your date an time #{@date_time}"
  erb :message
end
