class UsersController < ApplicationController
  
  def show
    @user = User.friendly.find(params[:id])
  end

  def index
    @users = User.page(params[:page]).per(8)
    @us = User.page(params[:page_other]).per(12).padding(2)
  end
end
