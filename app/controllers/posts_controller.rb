class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @new_comment = Comment.new
    @comments = @post.comments.includes(:user).where(post_id: @post.id)
    @replies = Comment.group(:reply).count
  end

  private
  def post_params
    params.require(:post).permit(:title, :text).merge(user_id: current_user.id)
  end
end
