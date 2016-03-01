class User < ActiveRecord::Base
	geocoded_by :address
  	after_validation :geocode
	has_many :products
	validates :name, presence: true, uniqueness: true
  has_secure_password
end
