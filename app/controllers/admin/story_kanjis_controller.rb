# frozen_string_literal: true

class Admin::StoryKanjisController < Admin::BaseController
  before_action :load_story_kanji, only: [:show, :edit, :update]

  def index
    @q = StoryKanji.ransack(params[:q])
    @pagy, @story_kanjis = pagy(@q.result.order(created_at: :desc))
  end

  def new
    @story_kanji = StoryKanji.new
  end

  def create
    @story_kanji = StoryKanji.new story_kanji_params

    if @story_kanji.save
      flash[:success] = "Tạo câu chuyện thành công"
      redirect_to admin_story_kanjis_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @story_kanji.update story_kanji_params
      flash[:success] = "Lưu thành công"
      redirect_to admin_story_kanjis_path
    else
      render :edit
    end
  end

  private

  def load_story_kanji
    @story_kanji = StoryKanji.find(params[:id])
  end

  def story_kanji_params
    params.require(:story_kanji).permit StoryKanji::ATTRS
  end
end
