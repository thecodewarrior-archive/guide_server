class ImageRevision < ActiveRecord::Base
  belongs_to :guide_image
  has_one :identifier
end
