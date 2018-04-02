class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :date
      t.text :content
      t.text :blog

      t.timestamps
    end
  end
end
