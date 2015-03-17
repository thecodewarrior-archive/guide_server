class Identifier < ActiveRecord::Base
  belongs_to :guide_content
  belongs_to :image_revision
  belongs_to :image_requirement
  belongs_to :guide_requirement
  
  def display_name
    return self.modid + ":" + self.name
  end
end
