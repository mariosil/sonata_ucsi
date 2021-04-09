# frozen_string_literal: true

# The application controller
class ApplicationController < ActionController::Base
  before_action :require_login

  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.html { redirect_to :login, alert: exception.message }
    end
  end

  private

  def not_authenticated
    redirect_to login_path, alert: 'Require to login first'
  end
end
