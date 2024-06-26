class PagesController < ApplicationController
  def index
    @posts = Post.order(created_at: :desc).page(params[:page]).per(6)
  end
end
