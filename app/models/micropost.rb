class Micropost < ActiveRecord::Base
  # delete :user_id from the list of accessable attributes
  attr_accessible :content
  belongs_to :user
  validates :content, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true
  default_scope order: 'microposts.created_at DESC'
end
