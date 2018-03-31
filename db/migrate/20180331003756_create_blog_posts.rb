class CreateBlogPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :blog_posts do |t|
      t.text :title
      t.text :image

      t.timestamps
    end
  end
end
