class Battler < ApplicationRecord

	validates :name, presence: true

	#has_and_belongs_to_many :battles, join_table: 'battle_battlers'
	has_many :rounds
end