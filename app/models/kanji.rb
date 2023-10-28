# frozen_string_literal: true

# == Schema Information
#
# Table name: kanjis
#
#  id                :bigint           not null, primary key
#  chinese_character :string(255)
#  meaning           :string(255)
#  number_of_strokes :integer
#  svg               :text(65535)
#  yin_han           :string(255)
#  yin_kun           :string(255)
#  yin_on            :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  level_kanji_id    :integer
#
class Kanji < ApplicationRecord
  strip_attributes

  belongs_to :level_kanji

  ATTRS = [:yin_kun, :meaning, :level_kanji_id, :yin_on, :yin_han].freeze

  # validates :yin_kun, :meaning, :yin_on, :number_of_strokes, :yin_han, presence: true

  class << self
    def ransackable_attributes _auth_object = nil
      %w[chinese_character yin_kun meaning yin_on yin_han]
    end

    def ransackable_associations _auth_object = nil
      []
    end
  end
end
