class UnreadBy < ActiveRecord::Base
  belongs_to :guide
  belongs_to :draft
  belongs_to :guide_image
  belongs_to :submission
end
