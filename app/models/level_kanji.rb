# frozen_string_literal: true

# == Schema Information
#
# Table name: level_kanjis
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class LevelKanji < ApplicationRecord
  has_many :kanjis

  class << self
    def ransackable_attributes _auth_object = nil
      %w[name]
    end

    def ransackable_associations _auth_object = nil
      ["kanjis"]
    end
  end
end
