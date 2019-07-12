class CreateTimes < ActiveRecord::Migration[5.2]
  def change
    create_table :times do |t|
      t.string :content
      t.string :check
      t.string :user_name

      t.timestamps
    end
  end
end
