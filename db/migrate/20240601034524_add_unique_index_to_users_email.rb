class AddUniqueIndexToUsersEmail < ActiveRecord::Migration[7.1]
  def change
    # Add a unique index to the email column
    add_index :users, :email, unique: true
  end
end
