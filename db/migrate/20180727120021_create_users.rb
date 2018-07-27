class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :email
      t.string :password
      t.string :confirm_password
      t.string  :encrypted_password, default: "", null: false
      
      t.timestamps
    end
  end
end
