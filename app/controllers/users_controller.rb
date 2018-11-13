class UsersController < ApplicationController
  def index
    # render plain: "I'm in the index action!!"
    render json: params
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render json: user.errors.full_messages, status: 422
    end

  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    render json: user
  end

  def show
    render json: params
  end

  private

  def user_params
    params.require(:user).permit(:username)
  end

end
