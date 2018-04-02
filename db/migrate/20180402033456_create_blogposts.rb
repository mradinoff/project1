class CreateBlogposts < ActiveRecord::Migration[5.1]
  def change
    create_table :blogposts do |t|
      t.text :title
      t.text :date
      t.text :content
      t.text :image

      t.timestamps
    end
  end
end
