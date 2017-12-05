class UsersController < ApplicationController

def index
  @users = User.all
end

def new
  @user = User.new
end

def show
  @user = User.find(params[:id])
end

def create
   user = User.new(user_params)
   user.save
   redirect_to user
end

def edit
  @user = User.find(params[:id])
end

def update
  @user = User.find(params[:id])

  @user.update(user_params)
end

def destroy
  @user = User.find(params[:id])
  @user.destroy
  redirect_to users_path
end

def user_params
  params.require(:post).permit(:name, :email)
end

end
