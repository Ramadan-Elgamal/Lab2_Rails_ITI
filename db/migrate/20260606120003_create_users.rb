class CreateUsers < ActiveRecord::Migration[8.1]
  def change
    create_table :users, if_not_exists: true do |t|
      t.string :name
      t.date :DOB
      t.string :email
      t.string :phone_number

      t.timestamps
    end
    add_index :users, :email, unique: true, if_not_exists: true
  end
end
