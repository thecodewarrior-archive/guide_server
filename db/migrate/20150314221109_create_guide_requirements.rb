class CreateGuideRequirements < ActiveRecord::Migration
  def change
    create_table :guide_requirements do |t|
      t.references :guide_content, index: true
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
