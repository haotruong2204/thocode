# frozen_string_literal: true

class Client::RecordsController < Client::BaseController
  before_action :render_service, only: [:show, :hira_kata, :radical]
  before_action :set_record, only: :show

  def show
    if @record.hiragana? || @record.katakana?
      if @record.kanji_list.include?("じ") || @record.kanji_list.include?("ジ")
        redirect_to hira_kata_record_path(@record)
      else
        flash[:error] = "Tạo bản nháp Hiragana hoặc Katakana nhưng nội dung không khớp, vui lòng chọn lại"
        redirect_to root_path
      end
    end

    return unless @record.sub_kanji?

    if @record.kanji_list.include?("衣")
      redirect_to radical_record_path(@record)
    else
      flash[:error] = "Tạo bản nháp 214 bộ thủ nhưng nội dung không khớp, vui lòng chọn lại"
      redirect_to root_path
    end
  end

  def hira_kata
  end

  def radical
  end

  def create
    if current_account.advanced?
      @record = Record.new record_params
      @record.account_id = current_account.id
      @record.name = "Code=#{SecureRandom.uuid}-#{Time.zone.now.to_i}"

      if @record.save
        flash[:success] = "Tạo bản ghi thành công."
        current_account.histories.create(
          type_history: "download",
          title: "Tạo bản nháp thành công.",
          description: "Chúc bạn học thật tốt với file luyện viết này",
          record_id: @record.id
        )
        redirect_to @record
      else
        flash[:error] = "Tạo bản ghi thất bại."
        redirect_to root_path
      end
    elsif record_params[:type_record] == "hiragana" ||
          record_params[:type_record] == "katakana" || record_params[:type_record] == "sub_kanji"
      @record = Record.new record_params
      @record.account_id = current_account.id
      @record.name = "Code=#{SecureRandom.uuid}-#{Time.zone.now.to_i}"
      @record.title = "luyenkanji.com | @thocodehoctiengnhat"

      if @record.save
        flash[:success] = "Tạo bản ghi thành công."
        current_account.histories.create(
          type_history: "download",
          title: "Tạo bản nháp thành công.",
          description: "Chúc bạn học thật tốt với file luyện viết này",
          record_id: @record.id
        )
        redirect_to @record
      else
        flash[:error] = "Tạo bản ghi thất bại."
        redirect_to root_path
      end
    else
      flash[:error] = "Bạn cần nâng cấp tài khoản để sử dụng tùy chọn này."
      redirect_to root_path
    end
  end

  private

  def record_params
    params.require(:record).permit Record::ATTRS
  end

  def set_record
    @record = Record.friendly.find(params[:id])
  end

  def render_service
    @record = Record.friendly.find(params[:id])
    svg = HandleSvgService.new
    @list_path = svg.handle_kanji @record.kanji_list
  end
end
