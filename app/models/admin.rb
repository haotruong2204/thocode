# frozen_string_literal: true

# == Schema Information
#
# Table name: admins
#
#  id                  :bigint           not null, primary key
#  email               :string(255)      default(""), not null
#  encrypted_password  :string(255)      default(""), not null
#  full_name           :string(255)      not null
#  photo_url           :text(65535)
#  remember_created_at :datetime
#  role                :integer          default("administrator"), not null
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
# Indexes
#
#  index_admins_on_email  (email) UNIQUE
#
class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :rememberable, :validatable

  enum role: { administrator: 1, collaborator: 1 }
end
