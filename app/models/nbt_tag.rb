class NbtTag < ActiveRecord::Base
  belongs_to :id_map
  belongs_to :nbt_tag
end
