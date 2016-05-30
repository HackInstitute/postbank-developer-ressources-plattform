require 'rails_helper'

RSpec.describe CertificateController, type: :controller do
  render_views

  let(:certificate){ Certificate.new(email: 'mail', booking_id: 'bid', certificate_link: 'app/certificates/HACK_062016_1.zip') }

  it 'redirects on wrong input' do
    get 'show', params
    expect(response).to redirect_to(root_path)
    expect(flash[:error]).to eq('sorry')
  end

  it 'sends the correct certificate' do
    certificate.save!
    get 'show', params
    expect(response.body).to eq(IO.binread('app/certificates/HACK_062016_1.zip'))
  end

  private

  def params
    params = { certificate: certificate.attributes.slice('email', 'booking_id') }
  end
end
