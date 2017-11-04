class CommentsController < ApplicationController
  
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
  end

  private
  def comment_params
    params.require(:comment).permit(:user_id, :body, :rating)
  end
end