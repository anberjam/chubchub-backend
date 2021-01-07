class FavoritesController < ApplicationController
    def index
        favorites = Favorite.all
        render json: favorites
    end


    def create
        favorite = Favorite.create(dessert_id: params[:dessert_id])
        render json: favorite
    end

private
    def favorite_params
        params.permit(:dessert_id) 
    end

end