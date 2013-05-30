class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      #successful.
      flash[:success] = "Welcome to TeaBlog!"
      redirect_to @user
    else
      render "new"
    end
  end
end