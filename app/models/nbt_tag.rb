class NbtTag < ActiveRecord::Base
  belongs_to :id_map
  belongs_to :nbt_tag
  has_many :nbt_tags
end
