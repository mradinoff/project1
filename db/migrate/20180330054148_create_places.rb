class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.text :name
      t.text :area
      t.text :length
      t.text :distance
      t.text :difficulty
      t.text :one_way
      t.text :fee
      t.text :access
      t.text :conditions
      t.text :safety

      t.timestamps
    end
  end
end
