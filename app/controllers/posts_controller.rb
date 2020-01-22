class PostsController < ApplicationController
  before_action :superuser_flag, only:[:new, :create, :edt, :update, :destroy]
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  def index
    @posts = Post.all.order("updated_at desc")
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :description, :content)
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def superuser_flag
    if current_user.nil? || current_user.superuser != true
      redirect_to root_path
    end
  end
end
