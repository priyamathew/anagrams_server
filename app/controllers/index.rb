get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/chicken' do
  "Hello World"
end

get '/findanagrams' do
  redirect "/#{params[:word]}"
end

get '/:word' do
  #binding.pry
  @user_word = Word.where(word: params[:word]).first
  unless @user_word.nil?
    @anagrams = @user_word.anagram
  else 
    @error = "Word not found"
  end
  erb :index
end
