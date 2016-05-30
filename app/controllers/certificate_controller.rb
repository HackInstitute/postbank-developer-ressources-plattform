class CertificateController < ApplicationController
  def show
    @certificate = Certificate.find_by(certificate_params)

    unless @certificate.present? && @certificate.certificate_link?
      flash[:error] = "sorry"
      redirect_to root_path
    else
      send_file @certificate.certificate_link
    end
  end

  private

  def certificate_params
    params.require(:certificate).permit(:booking_id, :email)
  end
end
