class ImageRevision < ActiveRecord::Base
  belongs_to :guide_image
  has_one :identifier
  
  def display_name
    return ( self.identifier.nil? ? "XXX" : self.identifier.display_name ) +
             " r" + self.number
  end
end
