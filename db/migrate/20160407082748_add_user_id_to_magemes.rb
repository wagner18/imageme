class AddUserIdToMagemes < ActiveRecord::Migration
  def change
    add_column :magemes, :user_id, :integer
    add_index :magemes, :user_id
  end
end
