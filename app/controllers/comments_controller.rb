class CommentsController < ApplicationController
  def create
    @comment = Comment.new(params[:comment].permit(:content, :user_id, :post_id))
    @post = Post.find(params[:post_id])
    @comment.user_id = current_user.id
    @comment.post_id = @post.id

    @comment.save
    redirect_to post_path(@post)
  end

  def detroy
  end
end
