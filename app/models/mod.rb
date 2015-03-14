class Mod < ActiveRecord::Base
  belongs_to :id_map
  has_many :mod_versions
end
