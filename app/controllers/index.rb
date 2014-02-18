get '/' do
  @word = params[:word]
  @words = Word.anagrams_for(params[:word])

  erb :index
end

post '/' do
  @word = params[:word]

  redirect to("/?word=#{params[:word]}")

  # redirect to("/result/#{@word}")
end

# get '/result/:word' do
#   @word = params[:word]
#   @words = Word.anagrams_for(params[:word])
#   erb :results
# end






