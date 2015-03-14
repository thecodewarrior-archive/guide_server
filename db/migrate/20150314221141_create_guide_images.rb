class CreateGuideImages < ActiveRecord::Migration
  def change
    create_table :guide_images do |t|
      t.integer :aspect_ratio
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
