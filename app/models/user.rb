class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, length: { minimum: 6 }, if: -> { new_record? || !password.nil? }

  enum role: { user: "user", admin: "admin" }

  after_initialize :set_default_role

  private

  def set_default_role
    self.role ||= "user"
  end

end
