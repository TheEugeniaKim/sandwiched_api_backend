class OrdersController < ApplicationController
    def index 
        render json: Orders.all
    end

    def show 
        render json: Orders.find(params[:id])
    end 
end
