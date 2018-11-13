class UsersController < ApplicationController
  def index
  @users = User.all
end

def new
  @user = User.new
end

def create
  @user = User.new(user_params)
  if @User.save
    redirect_to users_path, notice: "El usuario fue creado con éxito"
  else
    render :new
  end
end

def show
  @user = User.find(params[:id])
end

def edit
  @user = User.find(params[:id])
end

def update
  @user = Product.find(params[:id])
  if @user.update(product_params)
    redirect_to users_path, notice: "El usuario ha sido editadocon éxito"
  else
    render :edit
  end
end

def destroy
  user = user.find(params[:id])
  user.destroy
  redirect_to users_path, notice: "El usuario fue eliminado con éxito"
end

private
  def user_params
    params.require(:user).permit(:name, :email)
  end
end
