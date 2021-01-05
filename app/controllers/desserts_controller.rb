class DessertsController < ApplicationController
    def index
        dessert = Dessert.all
        render json: dessert
    end
end
