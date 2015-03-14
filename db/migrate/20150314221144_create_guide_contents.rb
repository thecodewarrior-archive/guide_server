class CreateGuideContents < ActiveRecord::Migration
  def change
    create_table :guide_contents do |t|
      t.references :revision, index: true
      t.string :title
      t.string :image
      t.text :content

      t.timestamps
    end
  end
end
