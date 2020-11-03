class UsersController < ApplicationController
    before_action :already_signed_in, only: [:new, :create]

    def new
        @user = User.new
        render :new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to cats_url
        else
            render :new
        end
    end

end
