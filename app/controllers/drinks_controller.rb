get '/' do
  erb :home
end

post '/search' do
  search_query = params[:search_query].gsub(' ', '%20')
  uri = URI.parse("http://addb.absolutdrinks.com/quickSearch/drinks/#{search_query}/?apiKey=#{ENV['API_KEY']}")
  response = Net::HTTP.get_response(uri)
  @body = JSON.parse(response.body)
  search_results = []
  @body["result"].each do |drink|
    cocktail =  Cocktail.find_or_create_by(name: drink["name"], isAlcoholic: drink["isAlcoholic"], description: drink["descriptionPlain"])
    drink["ingredients"].each do |ingredient| 
      cocktail.ingredients << ingredient["textPlain"] unless cocktail.ingredients.include?(ingredient["textPlain"])
    end
    cocktail.save
    search_results << cocktail
  end
  @cocktails = search_results
  erb :'cocktails/index'
end

get '/cocktails/:cocktail_id' do
  @cocktail = Cocktail.find_by(id: params[:cocktail_id])
  erb :'cocktails/show'
end
