post '/favorites' do
  Favorite.create(user: current_user, cocktail_id: params[:cocktail_id])
  redirect "/users/#{current_user.username}"
end