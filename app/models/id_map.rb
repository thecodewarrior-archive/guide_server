class IdMap < ActiveRecord::Base
  belongs_to :guide_content
  has_one :mod
  has_many :nbt_tags
  
  
  def nbt_text
    
  end
  
  def display_name
    return get_type_name + " - " + self.name + ":" + self.meta + nbt_text
  end
  
  def get_type_name
    t = self.type
    if(t==0)
      "Item"
    elsif(t==1)
      "Block"
    elsif(t==3)
      "Entity"
    else
      "ERR"
    end
  end
end
