class Relationship < ApplicationRecord
  belongs_to :follower, class_name: "user"
  belongs_to :followed, class_name: "User"
  validates :follower_id, presence: true
  validates :followed_id, presence: true
end
