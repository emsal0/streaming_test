class Admin < ActiveRecord::Base
	attr_accessor :password
		
	def self.authenticate(email,password)
		user = Admin.find_by_email(email)
		if user && user.match_password(password)
			return user
		else
			return false
		end
	end

	def match_password(login_password)
		return encrypted_password == BCrypt::Engine.hash_secret(login_password,salt)
	end
end
