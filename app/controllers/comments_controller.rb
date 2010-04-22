class CommentsController < ApplicationController
before_filter :sideposts_updates

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create!(params[:comment])
    redirect_to @post
  end
end
