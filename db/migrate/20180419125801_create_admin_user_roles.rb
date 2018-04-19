class CreateAdminUserRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_user_roles, id: false do |t|
      t.integer :id, limit: 8, unsigned: true, null: false, primary_key: true
      t.integer :admin_user_id, limit: 8, unsigned: true, null: false, default: 0
      t.string :role, null: false, default: ''
      t.timestamp :created_at, null: false, default: -> {'CURRENT_TIMESTAMP'}
      t.timestamp :updated_at, null: false, default: -> {'CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP'}
    end
    
    add_index :admin_user_roles, :admin_user_id
    add_index :admin_user_roles, :role
  end
end
