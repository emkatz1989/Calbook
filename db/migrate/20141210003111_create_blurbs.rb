class CreateBlurbs < ActiveRecord::Migration
  def change
    create_table :blurbs do |t|
      t.references :day, index: true
      t.text :text

      t.timestamps
    end
  end
end
