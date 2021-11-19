class User < ApplicationRecord


	VALID_EMAIL_REGEX= /\A(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})\z/i

	validates :email, presence: true, 
									uniqueness: { case_sensitive: false }, 
									length: { maximum: 108, minimum: 8}, 
									format: { with: VALID_EMAIL_REGEX }

	validates :password_digest, presence: true

	validates :username, presence: true, 
											uniqueness: { case_sensitive: false }
	has_secure_password
end