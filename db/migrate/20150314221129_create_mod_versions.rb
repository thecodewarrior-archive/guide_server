class CreateModVersions < ActiveRecord::Migration
  def change
    create_table :mod_versions do |t|
      t.references :guide, index: true
      t.references :draft, index: true
      t.references :guide_image, index: true
      t.references :mod, index: true
      t.string :version_name
      t.string :version
      t.references :image_requirement, index: true
      t.references :guide_requirement, index: true

      t.timestamps
    end
  end
end
