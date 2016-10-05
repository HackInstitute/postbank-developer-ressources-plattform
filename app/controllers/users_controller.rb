class UsersController < ApplicationController
 
def create
  @user = User.new(user_params)
 
  if @user.save
  	@authentication_key = AuthenticationKey.where(user_id: nil).first
  	@authentication_key.user = @user
    # nur kontonummer
  	if @authentication_key.save
	  	@postbank_id = PostbankId.where(user_id: nil).first
  		@postbank_id.user = @user
  		if @postbank_id.save
    		redirect_to @authentication_key
    	end
    else
    	render 'application/index'
    end
  else
    render 'application/index'
  end
end
 
private
  def user_params
    params.require(:user).permit(:name, :email, :city, :zip, :address)
  end

end
