class PostsController < ApplicationController
  
  load_and_authorize_resource

  def index
    @posts = Post.all.order(id: :desc)
   

  end

  def show
    @post = Post.find(params[:id])
    @user = User.find(@post.user_id)
    @comm = Comment.where(:post_id =>(params[:id]))
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    
    @post.update(post_params)
    redirect_to posts_path
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.new(post_params)
    post.user_id = current_user.id
    post.save
    redirect_to posts_path
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private

  def post_params
    params[:post].permit(:title, :content, :userid)
  end

end 
