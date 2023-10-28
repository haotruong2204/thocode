# frozen_string_literal: true

class Admin::HistoriesController < Admin::BaseController
  before_action :load_history, only: [:show]

  def index
    @q = History.ransack(params[:q])
    @pagy, @histories = pagy(@q.result.order(created_at: :desc))
  end

  def show
  end

  private

  def load_history
    @history = History.find(params[:id])
  end
end
