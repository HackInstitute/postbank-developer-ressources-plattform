class AuthenticationKey < ActiveRecord::Base

	belongs_to :user

	def to_param
			auth_key
	end	

end
