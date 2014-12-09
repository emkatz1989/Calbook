class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
    	t.string :blurb
    	t.string :reminder
    	t.string :image
    	t.string :video

    	t.timestamps
    end
  end
end
