get '/words' do
  @words = Word.order(:text)
  erb :"/words/index"
end