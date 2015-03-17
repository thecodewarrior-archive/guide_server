class CreateModVersionsManyToMany < ActiveRecord::Migration
  def change
    create_table :guides_mod_versions do |t|
      t.belongs_to :mod_version, index: true
      t.belongs_to :guide, index: true
    end
    create_table :drafts_mod_versions do |t|
      t.belongs_to :mod_version, index: true
      t.belongs_to :draft, index: true
    end
    create_table :guide_images_mod_versions do |t|
      t.belongs_to :mod_version, index: true
      t.belongs_to :guide_image, index: true
    end
    create_table :image_requirements_mod_versions do |t|
      t.belongs_to :mod_version, index: true
      t.belongs_to :image_requirement, index: true
    end
    create_table :guide_requirements_mod_versions do |t|
      t.belongs_to :mod_version, index: true
      t.belongs_to :guide_requirement, index: true
    end
    
    change_table :mod_versions do |t|
      t.remove :guide
      t.remove :draft
      t.remove :guide_image
      t.remove :image_requirement
      t.remove :guide_requirement
    end
  end
end
