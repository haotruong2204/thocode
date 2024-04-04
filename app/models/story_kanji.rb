# frozen_string_literal: true

# == Schema Information
#
# Table name: story_kanjis
#
#  id         :bigint           not null, primary key
#  content    :text(65535)
#  title      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  account_id :integer
#  kanji_id   :integer
#
class StoryKanji < ApplicationRecord
  belongs_to :kanji

  ATTRS = [:kanji_id, :title, :content, :account_id].freeze

  class << self
    def ransackable_attributes _auth_object = nil
      %w[title content]
    end

    def ransackable_associations _auth_object = nil
      ["kanji"]
    end
  end
end
