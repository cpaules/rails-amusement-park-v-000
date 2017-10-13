require 'pry'
class UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to @user
  end

  def show
    if session[:user_id] != @user.id
      redirect_to '/'
    end
  end

  private

  def user_params
      params.require(:user).permit(:name, :height, :happiness, :nausea, :tickets, :password, :admin )
  end

  def set_user
      @user = User.find(params[:id])
    end
end
