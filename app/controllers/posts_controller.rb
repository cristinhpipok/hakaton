class PostsController < ApplicationController
  def index
  @posts = Post.all
end

def new
  @post = Post.new
end

def create
  @user = User.find_by(name:"cristin")
  @post = @user.posts.create(post_params)
   redirect_to posts_path
end

def show
  @post = Post.find(params[:id])
end

def edit
  @post = Post.find(params[:id])
end

def update
  @post = Post.find(params[:id])
  if @post.update(post_params)
    redirect_to posts_path, notice: "Post editado"
  else
    render :edit
  end
end

def destroy
  post = post.find(params[:id])
  post.destroy
  redirect_to posts_path, notice: "post eliminado"
end
private
  def post_params
    params.require(:post).permit(:title,:description)
  end
end
