class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.save
    redirect_to posts_path
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :user_id, :post_id).merge(user_id: current_user.id, post_id: params[:post_id])
  end
end
