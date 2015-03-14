class Guide < ActiveRecord::Base
  has_one :unread_by
  has_many :revisions
end
