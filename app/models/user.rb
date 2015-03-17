class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable
        
  has_many :submissions, :foreign_key => 'author_id', :class_name => 'Submission'
  has_many :assigned_submissions , :foreign_key => 'assigned_admin_id', :class_name => 'Submission'
  
  has_and_belongs_to_many :unread_items, join_table: 'unread_mtom_users', :class_name => 'UnreadBy'
  has_and_belongs_to_many :interested_items, join_table: 'interested_mtom_users', :class_name => 'UnreadBy'
  @@rankenum = ( class << Class.new
    def None
      0
    end
    def Craftsman
      1
    end
    def Knight
      2
    end
    def Lord
      3
    end
    def King
      4
    end
    def God
      5
    end
    def Admin
      10
    end
  end)
  
  def Rank
    @@rankenum
  end
  
  def display_name
    return self.email
  end
end