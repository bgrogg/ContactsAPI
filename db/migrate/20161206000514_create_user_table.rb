class CreateUserTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false

      t.timestamps
    end
  end
end
