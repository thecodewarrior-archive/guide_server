class CreateNbtTags < ActiveRecord::Migration
  def change
    create_table :nbt_tags do |t|
      t.string :id
      t.string :type
      t.string :value
      t.references :id_map, index: true
      t.references :nbt_tag, index: true

      t.timestamps
    end
  end
end
