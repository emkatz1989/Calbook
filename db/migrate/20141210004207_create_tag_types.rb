class CreateTagTypes < ActiveRecord::Migration
  def change
    create_table :tag_types do |t|
      t.references :tag, index: true
      t.integer :taggable_id
      t.string :taggable_type

      t.timestamps
    end
  end
end
