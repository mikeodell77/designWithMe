class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    puts "User params : ", params[:user]
    
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, notice: "Thank you for signing up!"
    else
      render "new"
    end
  end

  def show

  end

  def edit

  end

  def update

  end

  def index
    @users = User.all
  end
end
