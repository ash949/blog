class CommentsController < ApplicationController

  load_and_authorize_resource
  
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    @comment.user = current_user
    
    if @comment.save 
      redirect_to @post, notice: 'Your Review has successfully been added.'
    else
      redirect_to @post, flash: { error: @comment.errors.full_messages }
    end
    

  end

  def destroy
    set_comment
    @post = @comment.post
    @comment.destroy
    redirect_to @post, notice: 'Comment has successfully been destroyed'
  end

  private
  def comment_params
    params.require(:comment).permit(:user_id, :body, :rating)
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end
end