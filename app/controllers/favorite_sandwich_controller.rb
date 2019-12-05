class FavoriteSandwichController < ApplicationController

    def index 
        render json: FavoriteSandwich.all
    end

    def show 
        render json: FavoriteSandwich.find(params[:id])
    end 

    def create
        @favorite_sandwich = FavoriteSandwich.new(favorite_sandwich_params)
        if @favorite_sandwich.valid?
            @favorite_sandwich.save


            render json: {payload: @favorite_sandwich}
        else
            render json: {error: "Already Added this sandwich to Favorites"}
        end
    end

    private

    def favorite_sandwich_params
        params.require(:favorite_sandwich).permit(:user_id, :sandwich_id)
    end

end
