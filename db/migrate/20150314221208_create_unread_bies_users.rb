class CreateUnreadBiesUsers < ActiveRecord::Migration
  def change
    create_table :unread_bies_users do |t|
      t.belongs_to :unread_by, index: true
      t.belongs_to :user, index: true
    end
  end
end
