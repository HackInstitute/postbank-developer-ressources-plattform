require "rails_helper"

RSpec.describe ApplicationController, type: :controller do
  render_views

  it "renders index" do
    get :index
    expect(response).to be_success
    expect(response.body).to include("Get your post /Bank hackathon certificate here!")
  end

  it "renders the flash" do
    flash_hash = ActionDispatch::Flash::FlashHash.new
    flash_hash[:error] = 'there'
    session['flash'] = flash_hash.to_session_value
    get :index
    expect(response.body).to include("There is no certificate for your entries, please try again or contact")
  end
end
