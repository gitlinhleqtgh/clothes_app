class User < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :orders, dependent: :destroy

  before_save :downcase_email

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze

  validates :email, presence: true,
    length: {maximum: Settings.user.email.size},
    format: {with: VALID_EMAIL_REGEX},
    uniqueness: true

  has_secure_password

  private

  def downcase_email
    email.downcase!
  end
end
