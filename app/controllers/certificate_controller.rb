class CertificateController < ApplicationController
  def show
    @certificate = Certificate.find_by(certificate_params)

    unless @certificate && @certificate.certificate_link?
      redirect_to 'application/index', error: "sorry"
      return
    end

    send_file @certificate.certificate_link
  end

  private

  def certificate_params
    params.require(:certificate).permit(:booking_id, :email)
  end
end
