class CreateBattlers < ActiveRecord::Migration[6.1]
  def change
    create_table :battlers do |t|
      t.string :name

      t.timestamps
    end
  end
end
