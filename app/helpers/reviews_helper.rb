module ReviewsHelper
  # Not sure if I need to permit user_id and book_id
  def review_params
   params.require(:review).permit(:body)
  end
end
