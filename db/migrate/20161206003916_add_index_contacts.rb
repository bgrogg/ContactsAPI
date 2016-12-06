class AddIndexContacts < ActiveRecord::Migration
  def change
    add_index :contacts, :email, unique: true
    add_index :contacts, :user_id
  end
end
