class User < ApplicationRecord

validates :email presence: true

					:password presence: true

					:username presence: true


end