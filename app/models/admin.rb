class Admin < ActiveRecord::Base
	attr_accessor :password
	before_save :encrypt_password
	after_save :destroy_password

	private

		def encrypt_password
			
end
