# frozen_string_literal: true

module CommentsHelper
  # Takes a commentable (post or comment) and returns number of comments underneath it including nested comments
  def comments_count(commentable)
    count = commentable.comments.count
    if commentable.comments.count.positive?
      commentable.comments.each do |comment|
        count += comments_count(comment)
      end
    end
    count
  end

  # Takes a commentable (post or comment) and returns the comments sorted by the query parameter
  def sort_comments(commentable)
    if !params[:sort].nil?
      sort = params[:sort]
      @comments = case sort
                  when 'likes'
                    commentable.comments.order(cached_votes_up: :desc)
                  when 'dislikes'
                    commentable.comments.all.order(cached_votes_down: :desc)
                  when 'newest'
                    commentable.comments.all.order('updated_at DESC')
                  else
                    commentable.comments.all
                  end
    else
      @comments = commentable.comments.all.order('updated_at DESC')
    end
  end
end
