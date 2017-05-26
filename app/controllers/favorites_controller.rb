post '/favorites' do
  favorite = Favorite.create(user: current_user, cocktail_id: params[:cocktail_id])
  redirect "/cocktails/#{favorite.cocktail_id}"
end

post '/favorites/remove' do
  favorite = Favorite.find_by(user: current_user, cocktail_id: params[:cocktail_id])
  favorite.destroy
  redirect "/cocktails/#{favorite.cocktail_id}"
end
