class GuideImage < ActiveRecord::Base
  has_many :image_revisions
  has_one :unread_by
  has_and_belongs_to_many :mod_versions
end
