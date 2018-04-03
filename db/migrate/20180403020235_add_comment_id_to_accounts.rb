class AddCommentIdToAccounts < ActiveRecord::Migration[5.1]
  def change
    add_column :accounts, :comment_id, :integer
  end
end
