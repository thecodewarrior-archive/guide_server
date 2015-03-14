class Guide < ActiveRecord::Base
  has_one :unread_by
  has_many :revisions
  has_many :mod_versions
end
