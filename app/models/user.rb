class User < ActiveRecord::Base

	has_many :postbank_ids
	has_many :authentication_keys

end
