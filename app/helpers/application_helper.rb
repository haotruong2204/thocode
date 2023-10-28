# frozen_string_literal: true

module ApplicationHelper
  include Pagy::Frontend

  FLASH_TYPE = {
    success: "success", error: "error", failed: "failed",
    alert: "error", notice: "success", danger: "danger"
  }.freeze

  def flash_class flash_type
    FLASH_TYPE[flash_type] || flash_type.to_s
  end

  def active_sidebar path, controller, action = "index"
    if current_page?(path) || (controller_name == controller && action_name == action)
      "active border-primary border-dashed"
    else
      "border-gray-200"
    end
  end

  def get_path_record id
    record_path Record.find id
  end

  def get_role_user condition
    condition ? "sinh viên" : "người dùng bình thường"
  end

  def level_of_difficult number_of_strokes
    str = ""
    case number_of_strokes
    when 0..5
      str = "
        <div class='rating-label checked'>
          <i class='ki-outline ki-star fs-6'></i>
        </div>
        <div class='rating-label'>
          <i class='ki-outline ki-star fs-6'></i>
        </div>
        <div class='rating-label'>
          <i class='ki-outline ki-star fs-6'></i>
        </div>
        <div class='rating-label'>
          <i class='ki-outline ki-star fs-6'></i>
        </div>
        <div class='rating-label'>
          <i class='ki-outline ki-star fs-6'></i>
        </div>
      "
    when 6..12
      str = "
        <div class='rating-label checked'>
          <i class='ki-outline ki-star fs-6'></i>
        </div>
        <div class='rating-label checked'>
          <i class='ki-outline ki-star fs-6'></i>
        </div>
        <div class='rating-label'>
          <i class='ki-outline ki-star fs-6'></i>
        </div>
        <div class='rating-label'>
          <i class='ki-outline ki-star fs-6'></i>
        </div>
        <div class='rating-label'>
          <i class='ki-outline ki-star fs-6'></i>
        </div>
      "
    when 13..18
      str = "
        <div class='rating-label checked'>
          <i class='ki-outline ki-star fs-6'></i>
        </div>
        <div class='rating-label checked'>
          <i class='ki-outline ki-star fs-6'></i>
        </div>
        <div class='rating-label checked'>
          <i class='ki-outline ki-star fs-6'></i>
        </div>
        <div class='rating-label'>
          <i class='ki-outline ki-star fs-6'></i>
        </div>
        <div class='rating-label'>
          <i class='ki-outline ki-star fs-6'></i>
        </div>
      "
    when 19..25
      str = "
        <div class='rating-label checked'>
          <i class='ki-outline ki-star fs-6'></i>
        </div>
        <div class='rating-label checked'>
          <i class='ki-outline ki-star fs-6'></i>
        </div>
        <div class='rating-label checked'>
          <i class='ki-outline ki-star fs-6'></i>
        </div>
        <div class='rating-label checked'>
          <i class='ki-outline ki-star fs-6'></i>
        </div>
        <div class='rating-label'>
          <i class='ki-outline ki-star fs-6'></i>
        </div>
      "
    else
      str = "
        <div class='rating-label checked'>
          <i class='ki-outline ki-star fs-6'></i>
        </div>
        <div class='rating-label checked'>
          <i class='ki-outline ki-star fs-6'></i>
        </div>
        <div class='rating-label checked'>
          <i class='ki-outline ki-star fs-6'></i>
        </div>
        <div class='rating-label checked'>
          <i class='ki-outline ki-star fs-6'></i>
        </div>
        <div class='rating-label checked'>
          <i class='ki-outline ki-star fs-6'></i>
        </div>
      "
    end
    str.html_safe
  end

  def level_of_kanji level
    str = ""
    case level
    when "n1"
      str = "primary"
    when "n2"
      str = "secondary"
    when "n3"
      str = "success"
    when "n4"
      str = "info"
    when "n5"
      str = "warning"
    when "hira"
      str = "danger"
    when "kata"
      str = "dark"
    end
    str.html_safe
  end
end
