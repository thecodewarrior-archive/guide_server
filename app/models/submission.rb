class Submission < ActiveRecord::Base
  belongs_to :user
  belongs_to :user
  has_many :revisions
  has_one :unread_by
end
