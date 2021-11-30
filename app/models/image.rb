class Image < ApplicationRecord

	validates :url, presence: true, uniqueness: { case_sensitive: false }

	has_and_belongs_to_many :users, join_table: 'users_images'
	
	scope :accepted, -> {where(accepted: true)}
	scope :non_accepted, -> {where(accepted: false)}

end