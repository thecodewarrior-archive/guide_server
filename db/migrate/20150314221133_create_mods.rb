class CreateMods < ActiveRecord::Migration
  def change
    create_table :mods do |t|
      t.string :mod_name
      t.string :modid
      t.references :id_map, index: true

      t.timestamps
    end
  end
end
