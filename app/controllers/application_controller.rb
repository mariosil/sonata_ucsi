# frozen_string_literal: true

# The application controller
class ApplicationController < ActionController::Base
  before_action :require_login

  private

  def not_authenticated
    redirect_to login_path, alert: 'Require to login first'
  end
end
