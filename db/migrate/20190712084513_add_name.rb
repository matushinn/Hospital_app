class AddName < ActiveRecord::Migration[5.2]
  def change
    add_column :hours,:content,:string
    add_column :hours,:check,:string
    add_column :hours,:user_name,:string

  end
end
