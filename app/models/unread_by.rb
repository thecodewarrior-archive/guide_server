class UnreadBy < ActiveRecord::Base
  belongs_to :guide
  belongs_to :draft
  belongs_to :guide_image
  belongs_to :submission
  has_and_belongs_to_many :users
end
