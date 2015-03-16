class CreateIdMaps < ActiveRecord::Migration
  def change
    create_table :id_maps do |t|
      t.references :guide_content, index: true
      t.string :name
      t.integer :meta
      t.integer :type

      t.timestamps
    end
  end
end
