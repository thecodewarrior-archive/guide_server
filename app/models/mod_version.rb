class ModVersion < ActiveRecord::Base
  belongs_to :guide
  belongs_to :draft
  belongs_to :guide_image
  belongs_to :mod
  belongs_to :image_requirement
  belongs_to :guide_requirement
end
