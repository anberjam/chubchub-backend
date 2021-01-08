class FavoritesController < ApplicationController
    def index
        favorites = Favorite.all
        render json: favorites
    end


    def create
        favorite = Favorite.create(favorite_params)
        render json: favorite
    end

    def destroy
        favorite = Favorite.find(params[:id])
        favorite.destroy
        render json: favorite
    end

private
    def favorite_params
        params.require(:favorites).permit(:dessert_id) 
    end

end