# frozen_string_literal: true

module RatingsHelper
  # Given a ratable object and a user, returns 'like', 'dislike', or 'none'
  def rating_for(rateable, user)
    rating = rateable.ratings.find_by(user: user)
    if rating
      if rating.up.positive?
        'like'
      else
        'dislike'
      end
    else
      'none'
    end
  end
end
