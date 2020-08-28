class HomeController < ApplicationController
  def index; end

  def upload
    result = CnabUpload::UploadService.new(params[:file]).call
    redirect_to transactions_path
  end
end
