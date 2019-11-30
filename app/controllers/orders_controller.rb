class OrdersController < ApplicationController
    def index 
        render json: Orders.all
    end

    def show 
        render json: Orders.find(params[:id])
    end 

    def create
        @order = Order.new()
    end

end

def create
    @director = Director.new(director_params)
    if @director.valid?
        @director.save
        session[:user] = @director
        redirect_to director_path(@director)
    else
        render :new
    end
end