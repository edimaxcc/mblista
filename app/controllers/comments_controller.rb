class CommentsController < ApplicationController

  def create
  @post = Post.find(params[:post_id])
  @comment = @post.comments.create!(params[:comments])
  redirect_to @post, :notice => "Comment created!"
  end 

end