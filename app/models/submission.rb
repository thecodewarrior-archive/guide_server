class Submission < ActiveRecord::Base
  belongs_to :user
  belongs_to :user
  
  belongs_to :author, :class_name=>'User'
  belongs_to :assigned_admin, :class_name=>'User' 
  
  has_many :revisions
  has_one :unread_by
end
