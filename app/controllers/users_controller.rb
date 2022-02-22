class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def signup
  end

  def create
    @post = User.new(name: params[:name], email: params[:email])
    if @post.save
      flash[:notice] = "Registration completed"
      redirect_to("/users/#{@post.id}")
    else
      render("signup")
    end
  end
end
