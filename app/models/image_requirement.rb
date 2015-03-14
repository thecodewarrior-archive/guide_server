class ImageRequirement < ActiveRecord::Base
  belongs_to :guide_content
  has_one :identifier
  has_many :mod_versions
end
