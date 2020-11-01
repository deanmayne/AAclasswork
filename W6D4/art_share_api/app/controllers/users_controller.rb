class UsersController < ApplicationController
  def index
    if params.include?(:user)
        user = User.where('username LIKE ?', "%#{new_params[:username]}%")
        render json: user
    else
        render json: User.all
    end
  end

  def create
    user = User.new(new_params)
    if user.save
        render json: user
    else
        render json: user.errors.full_messages, status: 422
    end
  end

  def show
    render json: User.find_by(id: params[:id])
  end

  def update
    user = User.find_by(id: params[:id])
    if user.update(new_params)
            redirect_to users_url(user)
    else
        render json: user.errors.full_messages, status: 422
    end
  end

  def destroy
    user = User.find_by(id: params[:id])
    user.destroy
        redirect_to users_url
  end

  private
  def new_params
        params.require(:user).permit(:username)
  end

end
