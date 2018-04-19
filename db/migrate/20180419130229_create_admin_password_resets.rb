class CreateAdminPasswordResets < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_password_resets, id: false do |t|
      t.integer :id, limit: 8, unsigned: true, null: false, primary_key: true
      t.string :email, null: false, default: ''
      t.string :token, null: false, default: ''
      t.timestamp :created_at, null: false, default: -> {'CURRENT_TIMESTAMP'}
      t.timestamp :updated_at, null: false, default: -> {'CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP'}
    end
    
    add_index :admin_password_resets, :email
    add_index :admin_password_resets, :token
  end
end
