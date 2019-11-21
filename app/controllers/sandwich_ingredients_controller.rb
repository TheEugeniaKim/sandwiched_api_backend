class SandwichIngredientsController < ApplicationController

    def index 
        render json: SandwichIngredient.all
    end

    def show 
        render json: SandwichIngredient.find(params[:id])
    end 

end
