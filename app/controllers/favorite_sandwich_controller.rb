class FavoriteSandwichController < ApplicationController

    def index 
        render json: FavoriteSandwich.all
    end

    def show 
        render json: FavoriteSandwich.find(params[:id])
    end 

end
