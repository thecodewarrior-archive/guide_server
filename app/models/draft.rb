class Draft < ActiveRecord::Base
  has_many :revisions
  has_many :unread_bies
  has_and_belongs_to_many :mod_versions
end
