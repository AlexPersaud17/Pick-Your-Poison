post '/favorites' do
  Favorite.create(user: current_user, cocktail_id: params[:cocktail_id])
  redirect "/users/#{current_user.username}"
end

post '/favorites/remove' do
  favorite = Favorite.find_by(user: current_user, cocktail_id: params[:cocktail_id])
  favorite.destroy
  redirect "/users/#{current_user.username}"
end
