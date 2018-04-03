class AddAccountIdToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :account_id, :integer
  end
end
