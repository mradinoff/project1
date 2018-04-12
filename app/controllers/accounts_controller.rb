class AccountsController < ApplicationController
  skip_before_action :require_login
  def new
    @account = Account.new
  end

  def index
    @account = Account.all
  end

  def edit
    unless @current_account.id == params[:id].to_i
      redirect_to accounts_path
    end
    @account  = Account.find params[:id]
  end

  def show
    if @current_account.nil?
      redirect_to root_path
    end
    @account = Account.find params[:id]
  end

  def update
    account = Account.find params[:id]
    account.update account_params
    redirect_to account
  end



  def create
    @account = Account.new account_params
    @account.display_photo = "/assets/avatar.png"
    @account.display_name = "Anonymous"
    if @account.save
      session[:account_id] = @account.id
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def account_params
    params.require(:account).permit(:email, :password, :password_confirmation, :display_name, :display_photo, :interests, :dob, :location, :hiking_ability)
  end
end
