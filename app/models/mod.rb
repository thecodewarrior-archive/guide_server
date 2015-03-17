class Mod < ActiveRecord::Base
  belongs_to :id_map
  has_many :mod_versions
  
  has_many :guides, :through => :mod_version
  has_many :guide_images, :through => :mod_version
  has_many :drafts, :through => :mod_version
  
  has_many :guide_requirements, :through => :mod_version
  has_many :image_requirements, :through => :mod_version
  
  def display_name
    return self.mod_name
  end
end
