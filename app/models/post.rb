class Post < ActiveRecord::Base
  belongs_to :user
  has_many :votes
  def upvotes_count
    votes.where(polarity: true).count
  end
  def downvotes_count
    votes.where(polarity: false).count

  end
end
