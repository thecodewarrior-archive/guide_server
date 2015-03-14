class CreateDrafts < ActiveRecord::Migration
  def change
    create_table :drafts do |t|
      t.string :title
      t.string :change_reason

      t.timestamps
    end
  end
end
