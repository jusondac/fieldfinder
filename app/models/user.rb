class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :first_name, :last_name, presence: true
  validates :password, length: { minimum: 6 }, if: -> { new_record? || !password.nil? }

  has_many :sessions, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :user_memberships, dependent: :destroy
  has_many :membership_plans, through: :user_memberships
  has_many :reviews, dependent: :destroy
  normalizes :email_address, with: ->(e) { e.strip.downcase }
end
