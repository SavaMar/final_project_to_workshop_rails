class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.page(params[:page]).per(5).padding(1)
    @us = User.page(params[:page_other]).per(12).padding(2)
  end
end
