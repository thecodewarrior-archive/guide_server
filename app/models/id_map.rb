class IdMap < ActiveRecord::Base
  belongs_to :guide_content
  has_one :mod
  has_many :nbt_tags
end
