class CreateUnreadBiesUsers < ActiveRecord::Migration
  def change
    create_table :unread_by_mtom_users do |t|
      t.belongs_to :unread_by, index: true
      t.belongs_to :user, index: true
    end
    create_table :interested_mtom_users do |t|
      t.belongs_to :unread_by, index: true
      t.belongs_to :user, index: true
    end
  end
end
