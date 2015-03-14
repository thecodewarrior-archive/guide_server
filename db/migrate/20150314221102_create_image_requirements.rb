class CreateImageRequirements < ActiveRecord::Migration
  def change
    create_table :image_requirements do |t|
      t.references :guide_content, index: true
      t.string :title
      t.text :description
      t.decimal :aspect_ratio

      t.timestamps
    end
  end
end
