class CreateUnreadBies < ActiveRecord::Migration
  def change
    create_table :unread_bies do |t|
      t.references :guide, index: true
      t.references :draft, index: true
      t.references :guide_image, index: true
      t.references :submission, index: true

      t.timestamps
    end
  end
end
