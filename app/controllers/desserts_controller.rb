class DessertsController < ApplicationController
    def index
        desserts = Dessert.all
        render json: desserts
    end

    def show
        dessert = Dessert.find(params[:id])
        render json: dessert
    end

    def updateLikes
        dessert = Dessert.find(params[:id])
        dessert.update({likes: params[:likes]})
        render json: dessert
    end

    def update
        dessert = Dessert.find(params[:id])
        dessert.update({name: params[:name], category: params[:category], picture: params[:picture]})
        render json: dessert
    end

    def destroy
        dessert = Dessert.find(params[:id])
        dessert.destroy
        render json: dessert
    end

    def create 
        dessert = Dessert.create({name: params[:name], category: params[:category], picture: params[:picture]})
        render json: dessert
    end

    private
    def desserts_param
        params.require(:id, :name, :category, :likes, :picture)
    end
end
