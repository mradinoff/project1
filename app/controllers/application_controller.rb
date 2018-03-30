class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :fetch_account

  private
  def fetch_account
    @current_account = Account.find_by :id => session[:account_id] if session[:account_id].present?
    session[:account_id] = nil unless @current_account.present? # This prevents horrors if you reseed.
  end
end
