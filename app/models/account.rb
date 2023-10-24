# == Schema Information
#
# Table name: accounts
#
#  id                  :bigint           not null, primary key
#  address             :string(255)
#  birth_of_date       :datetime
#  current_sign_in_at  :datetime
#  current_sign_in_ip  :string(255)
#  email               :string(255)      default(""), not null
#  encrypted_password  :string(255)      default(""), not null
#  expires_at          :datetime
#  failed_attempts     :integer          default(0), not null
#  full_name           :string(255)      not null
#  last_sign_in_at     :datetime
#  last_sign_in_ip     :string(255)
#  locked_at           :datetime
#  phone_number        :integer
#  photo_url           :text(65535)
#  provider            :string(255)
#  refresh_token       :string(255)
#  remember_created_at :datetime
#  role                :integer          default("free"), not null
#  sign_in_count       :integer          default(0), not null
#  slug                :string(255)
#  status              :integer          default(1), not null
#  token               :string(255)
#  uid                 :string(255)
#  unlock_token        :string(255)
#  user_name           :string(255)      not null
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
# Indexes
#
#  index_accounts_on_email         (email) UNIQUE
#  index_accounts_on_slug          (slug) UNIQUE
#  index_accounts_on_unlock_token  (unlock_token) UNIQUE
#  index_accounts_on_user_name     (user_name) UNIQUE
#
class Account < ApplicationRecord
  extend FriendlyId
  friendly_id :user_name, use: :slugged
  
  devise :database_authenticatable, :async, :rememberable, :trackable, :lockable,
    :omniauthable, :validatable, omniauth_providers: [:google_oauth2, :facebook]

  enum role: { free: 0, bacsic: 1, advanced: 2 }

  before_save :set_user_name

  def self.from_omniauth auth
    where(provider: auth.provider, uid: auth.uid).first_or_initialize do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
      user.full_name = auth.info.name
      user.photo_url = auth.info.image
    end
  end

  private

  def set_user_name
    self.user_name = email.split("@").first
  end
end
