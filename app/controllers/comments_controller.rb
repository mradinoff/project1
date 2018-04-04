class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def edit
    @comment = Comment.find params[:id]
  end

  def index
    @comment = Comment.all
  end

  def show
    @comment = Comment.find params[:id]
  end

  def create
    comment = Comment.new comment_params
    comment.account_id = @current_account.id
    if comment.save
      redirect_to comment # it worked!
    else
      redirect_to new
    end
  end

  def update
    comment = Comment.find params[:id]
    comment.update comment_params
    redirect_to comment
  end

  def destroy
    comment = Comment.find params[:id]
    comment.destroy
    redirect_to comments_path
  end

  private
  def comment_params
    params.require(:comment).permit(:date, :content, :blog, :place_id)
  end
end
