get '/' do
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end

get '/grandma' do
  user_input = params[:user_input]
  if user_input.downcase == user_input
    @grandma = "I CAN'T HEAR YOU!"
  else
    @grandma = "NOT SINCE 1969!"
  end
  # erb :index
  redirect to("/?grandma=#{@grandma}")
end
