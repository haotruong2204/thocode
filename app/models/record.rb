# frozen_string_literal: true

# == Schema Information
#
# Table name: records
#
#  id          :bigint           not null, primary key
#  kanji_list  :text(65535)
#  name        :string(255)
#  slug        :string(255)
#  title       :string(255)
#  type_record :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  account_id  :integer
#
# Indexes
#
#  index_records_on_slug  (slug) UNIQUE
#
class Record < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  strip_attributes

  belongs_to :account

  ATTRS = [:kanji_list, :title, :type_record].freeze

  enum type_record: { option: "option", hiragana: "hiragana", katakana: "katakana", sub_kanji: "sub_kanji",
    kanji_n5: "kanji_n5", kanji_n4: "kanji_n4", kanji_n3: "kanji_n3" }

  validates :kanji_list, :type_record, presence: true
end
