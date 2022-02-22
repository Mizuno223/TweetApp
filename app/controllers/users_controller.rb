class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def signup
    @user = User.new(name: params[:name], email: params[:email])
  end

  def create
    @user = User.new(name: params[:name], email: params[:email])
    if @user.save
      flash[:notice] = "Registration completed"
      redirect_to("/users/#{@user.id}")
    else
      render("signup")
    end
  end
end
