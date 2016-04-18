class User < ActiveRecord::Base
	has_secure_password

	has_many :reviews
	has_many :comments
	has_many :ratings

	validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
	validates :username, presence: true, uniqueness: true, index: true

end