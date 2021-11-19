class ChangeUsersTable < ActiveRecord::Migration[6.1]
  change_table :users do |t|
  t.remove :password
  t.integer :password_digest
end
end
