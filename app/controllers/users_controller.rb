class UsersController < ApplicationController
    before_action :set_user, only: [:new]

    def new
    end

    def create
        @user = User.new(user_param)
        if @user.save
            flash[:notice] = "Welcome to Alpha Blog, you have signed up"
            redirect_to articles_path
        else
            render "new"
        end
    end

    private

    def set_user
        @user = User.new
    end

    def user_param
        params.require(:user).permit(:username, :email, :password)
    end
end