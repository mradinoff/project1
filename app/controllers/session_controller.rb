class SessionController < ApplicationController
  skip_before_action :require_login
  def new
  end

  def create
    @account = Account.find_by :email => params[:email]
    if @account.present? && @account.authenticate(params[:password])
      session[:account_id] = @account.id
      redirect_to root_path
    else
      flash[:error] = "Invalid email or password"
      redirect_to login_path
    end
  end

  def destroy
    session[:account_id] = nil
    redirect_to login_path
  end
end
