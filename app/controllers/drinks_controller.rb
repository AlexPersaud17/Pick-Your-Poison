get '/' do
  erb :index
end

post '/search' do
  search_query = params[:search_query]
  uri = URI.parse("http://addb.absolutdrinks.com/quickSearch/drinks/#{search_query}/?apiKey=#{ENV['API_KEY']}")
  response = Net::HTTP.get_response(uri)
  @body = JSON.parse(response.body)
  binding.pry
  erb :show
end
