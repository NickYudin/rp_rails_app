class User < ApplicationRecord

	#has_and_belongs_to_many :images
	before_save {self.email = email.downcase}
	validates :email, presence: true, 
									uniqueness: { case_sensitive: false }, 
									length: { maximum: 108, minimum: 8}, 
									'valid_email_2/email': true

	validates :password_digest, presence: true

	validates :username, presence: true, 
											uniqueness: { case_sensitive: false }
	has_secure_password
end