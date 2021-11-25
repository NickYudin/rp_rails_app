class CreateUsersImages < ActiveRecord::Migration[6.1]
  def change
    create_table :users_images do |t|
      t.integer :user_id
      t.integer :image_id
      t.string :image_type
      t.timestamps
    end
  end
end
