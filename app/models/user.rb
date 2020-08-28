# frozen_string_literal: true

# Model for user informations
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: %i[github]

  validates :name, :email, :admin, presence: true

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.admin = true
      password = Devise.friendly_token[0, 20]
      user.password = password
      user.password_confirmation = password
      user.name = auth.info.name   # assuming the user model has a name
    end
  end
end
