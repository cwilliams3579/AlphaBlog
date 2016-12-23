class User < ActiveRecord::Base
  has_secure_password
  has_many :articles, dependent: :destroy
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { in: 3..25 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
  before_save do
    self.email.downcase!
  end
end
