class ImageRequirement < ActiveRecord::Base
  belongs_to :guide_content
  has_one :identifier
  has_and_belongs_to_many :mod_versions
end
