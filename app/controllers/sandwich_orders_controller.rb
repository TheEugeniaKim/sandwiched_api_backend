class SandwichOrdersController < ApplicationController

    def index 
        render json: SandwichOrder.all
    end

    def show 
        render json: SandwichOrder.find(params[:id])
    end 

    def create
        @sandwich_order = SandwichOrder.new(sandwich_order_params)
        if @sandwich_order.valid?
            @sandwich_order.save
            render json: @sandwich_order 
        else
            render :new
        end
    end

    private
    def sandwich_order_params
        params.require(:sandwich_order).permit(:order_id, :sandwich_id, :price, :comment)
    end


end
