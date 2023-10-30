# frozen_string_literal: true

class Client::DashboardController < Client::BaseController
  def index
    @record = Record.new
  end

  def search_kanji
    @q = Kanji.ransack(params[:q])
    @pagy, @kanjis = pagy(@q.result.order(created_at: :desc))

    @kanji = (@kanjis.last if @kanjis.count == 1)
  end

  def translate
  end

  def podcast
  end

  def checkout
  end

  def contact
  end
end
