class Post < ActiveRecord::Base
  belongs_to :user
  has_many :votes
  def upvotes_count
votes.where(polarity: true).count
  end
end
