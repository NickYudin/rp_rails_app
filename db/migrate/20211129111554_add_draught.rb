class AddDraught < ActiveRecord::Migration[6.1]
  def change
    add_column :images, :accepted, :boolean, default: false
    add_column :images, :uploaded_by, :integer
  end
end
