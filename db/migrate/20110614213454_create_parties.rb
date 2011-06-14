class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.integer :score

      t.timestamps
    end
  end
end
