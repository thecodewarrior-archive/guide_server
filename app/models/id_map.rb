class IdMap < ActiveRecord::Base
  belongs_to :guide_content
  has_one :mod
end
