class CreateParkings < ActiveRecord::Migration
  def change
    create_table :parkings do |t|
      t.integer :area
      t.string :type
      t.string :description

      t.timestamps null: false
    end
  end
end
