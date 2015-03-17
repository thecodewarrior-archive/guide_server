class GuideContent < ActiveRecord::Base
  belongs_to :revision
  has_one :identifier
  has_many :image_requirements
  has_many :guide_requirements
  has_many :id_maps
  
  def display_name
    return self.identifier.display_name
  end
end
