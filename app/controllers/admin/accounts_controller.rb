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
      if @account.advanced?
        @account.histories.create(
          type_history: "upgrade_plan",
          title: "Nâng cấp tài khoản thành công!",
          description: "Chúc bạn có những trải nghiệm thú vị trong hành trình học tiếng Nhật."
        )

        ActionAccountMailer.send_mail_upgrade(@account.email, @account.full_name).deliver_later
      end
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
