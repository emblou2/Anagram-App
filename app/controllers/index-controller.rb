get '/' do
  erb :index
end

get '/anagrams/:word' do
  @word = params[:word]
  erb :show
end

post '/' do
  @word = params[:word]
  redirect "/anagrams/#{@word}"
end