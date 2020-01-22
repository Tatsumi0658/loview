class AccountsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_account, only:[:show, :edit, :update]
  def new
    @account = Account.new
  end

  def create
    @account = Account.new(account_params)
    @account.user_id = current_user.id
    if @account.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @account.update(account_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private
  def account_params
    params.require(:account).permit(:account_name, :gender, :age)
  end

  def set_account
    @account = Account.find(params[:id])
  end
end
