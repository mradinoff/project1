class AddCommentIdToPlaces < ActiveRecord::Migration[5.1]
  def change
    add_column :places, :comment_id, :integer
  end
end
