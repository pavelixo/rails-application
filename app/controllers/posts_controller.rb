class PostsController < ApplicationController
  before_action :authenticate_user!, except: :show
  rescue_from ActiveRecord::RecordNotFound, with: :render_404

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to show_post_path(@post)
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
    @user = @post.user
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, user: current_user)
  end

  def authenticate_user!
    redirect_to login_path unless current_user
  end
end
