class ChengeRounds < ActiveRecord::Migration[6.1]
  def change
    add_column :rounds, :battler_id, :integer
  end
end
