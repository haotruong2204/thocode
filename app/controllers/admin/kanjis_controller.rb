# frozen_string_literal: true

class Admin::KanjisController < Admin::BaseController
  before_action :load_kanji, only: [:show, :edit, :update]

  def index
    @q = Kanji.ransack(params[:q])
    @pagy, @kanjis = pagy(@q.result.order(created_at: :desc))
  end

  def show
  end

  def edit
  end

  def update
    if @kanji.update kanji_params
      flash[:success] = "Lưu thành công"
      redirect_to admin_kanjis_path
    else
      render :edit
    end
  end

  private

  def load_kanji
    @kanji = Kanji.find(params[:id])
  end

  def kanji_params
    params.require(:kanji).permit Kanji::ATTRS
  end
end
