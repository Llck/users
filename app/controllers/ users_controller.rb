class UsersController < ApplicationController

def index
  @client = User.all
end

def new
  @client = User.new
end

def show
  @client = User.find(params[:id])
end
def create
   user = User.new(user_params)
   user.save
   redirect_to user
end
def edit
  @client = User.find(params[:id])
end
def update
  @client = User.find(params[:id])

  @client.update(user_params)
end
def destroy
  @client = User.find(params[:id])
  @client.destroy
  redirect_to users_path
end
def user_params
  params.require(:post).permit(:name, :email)
end

end
