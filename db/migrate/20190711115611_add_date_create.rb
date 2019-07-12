class AddDateCreate < ActiveRecord::Migration[5.2]
  def change
    add_column :users,:rese_date,:integer
  end
end
