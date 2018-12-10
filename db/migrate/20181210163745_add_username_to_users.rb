class AddUsernameToUsers < ActiveRecord::Migration[5.2]
  def change
  	add_index :users, :username, unique: true
    add_column :users, :username, :string
    add_column :users, :date_of_birth, :datetime
  end
end
