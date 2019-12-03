class OrdersController < ApplicationController
    def index 
        render json: Order.all
    end

    def show 
        render json: Order.find(params[:id])
    end 

    def create
        @order = Order.new(order_params)
        if @order.valid?
            @order.save
            render json: @order 
        else
            render :new
        end
    end

    private
    def order_params
        params.require(:order).permit(:user_id)
    end

end

