class CreateBattleBattlers < ActiveRecord::Migration[6.1]
  def change
    create_join_table :battles, :battlers

  end
end
