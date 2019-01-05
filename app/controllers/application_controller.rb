class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # Devise helper
  before_action :authenticate_user!

  # Rescue from CanCanCan
  rescue_from CanCan::AccessDenied do |exception|
    flash[:alert] = "AccessDenied"
    redirect_to root_path
  end

  rescue_from ActiveRecord::RecordNotFound do
    flash[:alert] = t "Record not found"
    redirect_to root_path
  end

end
