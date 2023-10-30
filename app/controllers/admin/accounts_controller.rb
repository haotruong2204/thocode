# frozen_string_literal: true

class Admin::AccountsController < Admin::BaseController
  before_action :load_account, only: [:show, :edit, :update]

  def index
    @q = Account.ransack(params[:q])
    @pagy, @accounts = pagy(@q.result.order(created_at: :desc))
  end

  def show
  end

  def edit
  end

  def update
    if @account.update account_params
      flash[:success] = "Lưu thành công"
      redirect_to admin_accounts_path
    else
      render :edit
    end
  end

  private

  def load_account
    @account = Account.friendly.find(params[:id])
  end

  def account_params
    params.require(:account).permit Account::ATTRS
  end
end
