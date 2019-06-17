class AddChangeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users,:user_id,:integer
    add_column :users,:birthday,:integer
  end
end
