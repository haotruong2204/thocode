# frozen_string_literal: true

class Admin::DashboardController < Admin::BaseController
  def index
    @account_free = Account.free
    @account_advanced = Account.advanced
  end
end
