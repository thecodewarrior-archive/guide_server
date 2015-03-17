class ModVersion < ActiveRecord::Base
  has_and_belongs_to_many :guides
  has_and_belongs_to_many :drafts
  has_and_belongs_to_many :guide_images
  has_and_belongs_to_many :image_requirements
  has_and_belongs_to_many :guide_requirements
  belongs_to :mod
  
  def display_name
    return (self.mod.nil? ? "XXX" : self.mod.display_name) + " - " + self.version_name
  end
end
