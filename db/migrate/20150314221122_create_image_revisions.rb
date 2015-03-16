class CreateImageRevisions < ActiveRecord::Migration
  def change
    create_table :image_revisions do |t|
      t.references :guide_image, index: true
      t.integer :number
      t.string :file_path
      t.text :notes
      t.text :changes
      t.string :reason
      t.boolean :keep_permanently
      
      t.timestamps
    end
  end
end
