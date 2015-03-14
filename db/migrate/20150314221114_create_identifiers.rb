class CreateIdentifiers < ActiveRecord::Migration
  def change
    create_table :identifiers do |t|
      t.string :name
      t.string :modid
      t.references :guide_content, index: true
      t.references :image_revision, index: true
      t.references :image_requirement, index: true
      t.references :guide_requirement, index: true

      t.timestamps
    end
  end
end
