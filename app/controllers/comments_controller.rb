class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @comment.blog_id = params[:blog_id]
  
    @comment.save
  
    redirect_to blog_path(@comment.blog)
  end

  def edit
  end

  def destroy
    @blog = Blog.find(params[:blog_id])
    @comment = @blog.comments.find(params[:id])
    @comment.destroy
    redirect_to blog_path(@blog)
  end

  private
  
  def comment_params
    params.require(:comment).permit(:title, :content)
  end
end
