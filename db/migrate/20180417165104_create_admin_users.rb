class CreateAdminUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_users do |t|
      t.string :name, null: false, default: ''
      t.string :email, null: false, default: ''
      t.string :password, null: false, default: ''
      t.integer :profile_image_id, limit: 8, null: false, default: 0
      t.string :remember_token, limit: 100
      t.timestamps
    end

    add_index :admin_users, :name
    add_index :admin_users, :email
    add_index :admin_users, :profile_image_id
  end
end
