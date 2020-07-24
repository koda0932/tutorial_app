class PostsController < ApplicationController
  before_action :set_search

  def index
    if params[:tag_name]
      @posts = Post.tagged_with("#{params[:tag_name]}")
    end
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
    params.require(:post).permit(:title, :text, :tag_list).merge(user_id: current_user.id)
  end

  def set_search
    @q = Post.ransack(params[:q])
    @posts = @q.result(distinct: true).order('created_at DESC')
  end
end
