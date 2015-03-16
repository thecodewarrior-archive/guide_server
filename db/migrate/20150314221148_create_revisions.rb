class CreateRevisions < ActiveRecord::Migration
  def change
    create_table :revisions do |t|
      t.references :guide, index: true
      t.references :draft, index: true
      t.integer :number
      t.text :notes
      t.text :changes
      t.string :reason
      t.references :submission, index: true
      t.boolean :keep_permanently
      
      t.timestamps
    end
  end
end
