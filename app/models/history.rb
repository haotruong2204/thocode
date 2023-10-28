# frozen_string_literal: true

# == Schema Information
#
# Table name: histories
#
#  id           :bigint           not null, primary key
#  description  :text(65535)
#  title        :string(255)
#  type_history :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  account_id   :integer
#  plan_id      :integer
#  record_id    :integer
#
class History < ApplicationRecord
  belongs_to :account
  enum type_history: { download: "download", create_account: "create_account", upgrade_plan: "upgrade_plan",
expire_plan: "expire_plan" }

  class << self
    def ransackable_attributes _auth_object = nil
      ["type_history"]
    end

    def ransackable_associations _auth_object = nil
      ["account"]
    end
  end
end
