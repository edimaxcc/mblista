class CommentsController < ApplicationController

  def new
    @comment = @post.comments.build(comment_params)
  end	

  def create
  @post = Post.find(params[:post_id])
  @comment = @post.comments.create(comment_params)
  redirect_to @post, :notice => "Comment created!"
  end 

  private

  def comment_params
  	params.require(:comment).permit(:name, :content, post_attributes: [ :title, :body, :starred ])
  	
  end

end
