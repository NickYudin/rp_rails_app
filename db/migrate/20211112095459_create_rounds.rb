class CreateRounds < ActiveRecord::Migration[6.1]
  def change
    create_table :rounds do |t|
      t.text :round_text
      t.integer :battle_id
      t.timestamps
    end
  end
end
