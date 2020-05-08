class RatingsController < ApplicationController

  def create
    @rating = Rating.new(rating_params)
    @rating.blog_id = params[:blog_id]
    @rating.user_id = current_user.id
  
    @rating.save
  
    redirect_to blog_path(@rating.blog)
  end
  private
  def rating_params
    params.require(:rating).permit(:score)
  end
end
