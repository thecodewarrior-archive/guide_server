class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable
        
  has_many :submissions, :foreign_key => 'author_id', :class_name => 'Submission'
  has_many :assigned_submissions , :foreign_key => 'assigned_admin_id', :class_name => 'Submission'
  
  has_and_belongs_to_many :unread_items, join_table: 'unread_mtom_users'
  has_and_belongs_to_many :interested_items, join_table: 'interested_mtom_users'
end