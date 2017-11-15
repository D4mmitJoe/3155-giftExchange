class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
    end
    
    def new
    end
    
    def create
        @user = User.new(user_params)
        
        @user.save
        redirect_to @user
    end
end

private
    def user_params
        params.require(:user).permit(:fname, :lname, :username, :password, :email, :address, :wish_list)
    end