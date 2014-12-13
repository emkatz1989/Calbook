class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :day, index: true
      t.text :text
      t.datetime :start_time
      t.datetime :end_time
      t.integer  :calendar_id 
      t.integer :event_id
      t.string :title

      t.timestamps
    end
  end
end
