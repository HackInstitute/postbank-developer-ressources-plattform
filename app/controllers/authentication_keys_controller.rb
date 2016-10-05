class AuthenticationKeysController < ApplicationController

	def show
  	@authentication_key = AuthenticationKey.find_by(auth_key: params[:id])
	end

end
