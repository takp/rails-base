class CreateAdminUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_users, id: false do |t|
      t.integer :id, limit: 8, unsigned: true, null: false, primary_key: true
      t.string :name, null: false, default: ''
      t.string :email, null: false, default: ''
      t.string :password, null: false, default: ''
      t.integer :profile_image_id, limit: 8, unsigned: true, null: false, default: 0
      t.string :remember_token, limit: 100
      t.timestamp :created_at, null: false, default: -> {'CURRENT_TIMESTAMP'}
      t.timestamp :updated_at, null: false, default: -> {'CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP'}
    end
    
    add_index :admin_users, :name
    add_index :admin_users, :email
    add_index :admin_users, :profile_image_id
  end
end
