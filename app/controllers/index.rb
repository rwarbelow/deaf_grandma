get '/' do
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end

post '/grandma' do
  if params[:user_input] == params[:user_input].downcase
    @grandma = "I CAN'T HEAR YOU!"
  else
    @grandma = "NOT SINCE 1969!"
  end
   erb :index, layout: !request.xhr?
  #redirect to("/?grandma=#{@grandma}")
end
