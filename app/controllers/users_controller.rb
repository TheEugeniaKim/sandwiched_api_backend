class UsersController < ApplicationController

    def index 
        render json: User.all
    end

    def show 
        render json: User.find(params[:id])
    end 

    def login 
    
        user = User.find_by(email: params[:email])
            
        if user 
            render json: user 
        else
            flash[:message] = "User Not Found. Please Try Again"
        end
    end

    def create 
        @user = User.new(user_params)
        if @user.valid?
            @user.save
            User.create(:director_id => session[:user]["id"], :movie_id => @movie.id)
        else
            render :new
        end
    end

    private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :birthday, :phone)
    end
end
