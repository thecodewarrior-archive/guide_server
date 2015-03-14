class Draft < ActiveRecord::Base
  has_many :revisions
  has_many :unread_bies
end
