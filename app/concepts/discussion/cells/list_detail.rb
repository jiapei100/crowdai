class Discussion::Cell::ListDetail < Cell::Concept
  inherit_views Discussion::Cell
  include ActionView::Helpers::DateHelper

  def show
    render :list_detail
  end

  def topic
    model
  end

  def author
    topic.participant
  end

  def comments
    topic.comments
  end

  def last_comment
    comments.last
  end

  def last_comment_author
    return nil if last_comment.nil?
    last_comment.participant
  end

end
