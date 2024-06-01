class User < ApplicationRecord
  # Ensure the email is unique and follows a valid email format
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }

  # Ensure the name and password are present
  validates :name, presence: true

  # Password encryption
  has_secure_password

  # Password validation is only required on create or when explicitly setting the password
  validates :password, presence: true, length: { minimum: 6 }, if: :password_required?

  private

  def password_required?
    password_digest.blank? || !password.nil?
  end
end
