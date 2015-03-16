class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.references :author, index: true
      t.references :assigned_admin, index: true
      t.string :title

      t.timestamps
    end
  end
end
