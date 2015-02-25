class PostsController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :create, :edit]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find params[:id]
  end

  def edit

  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new post_params
    authorize @post, :manage?

    if @post.save
      flash[:success] = 'Post created!'
      redirect_to post_path(@post)
    else
      render action: new
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :commit)
  end
end
