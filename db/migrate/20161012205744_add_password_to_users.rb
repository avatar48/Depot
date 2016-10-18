class AddPasswordToUsers < ActiveRecord::Migration
  def change
    add_column :users, :password_digest, :stirng
  end
end
