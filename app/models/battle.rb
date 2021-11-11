class Battle < ApplicationRecord

	validates :title, presence: true

	 has_and_belongs_to_many :battlers, join_table: 'battles_battlers'
	 has_many :rounds
end