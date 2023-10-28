# frozen_string_literal: true

# == Schema Information
#
# Table name: histories
#
#  id           :bigint           not null, primary key
#  description  :text(65535)
#  title        :string(255)
#  type_history :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  account_id   :integer
#  plan_id      :integer
#  record_id    :integer
#
class History < ApplicationRecord
  belongs_to :account
  belongs_to :record
  enum type_history: { download: 1, create_account: 2, upgrade_plan: 3, expire_plan: 4 }

  class << self
    def ransackable_attributes _auth_object = nil
      ["type_history"]
    end
  
    def ransackable_associations _auth_object = nil
      ["account"]
    end
  end 
end
