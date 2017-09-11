class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-._]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :password, length: { minimum: 6, allow_nil: true }
  validates :password_digest, presence: true
  validates :session_token, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

  has_one :cart
  has_many :products, through: :cart
  has_one :address
  has_one :payment
  has_one :watched_list
  has_many :watched_products, through: :watched_list

  has_many :orders,
  class_name: "Order",
  primary_key: :id,
  foreign_key: :user_id

  has_many :ordered_products, through: :orders, source: :products

  attr_reader :password
  after_initialize :ensure_session_token

  def self.find_by_credentials(email, password)
    user = User.find_by(email: email)
    user && user.is_password?(password) ? user : nil
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def self.gen_session_token
    SecureRandom.urlsafe_base64(16)
  end

  def reset_session_token!
    self.session_token = User.gen_session_token
    self.save!
    self.session_token
  end

private
  def ensure_session_token
    self.session_token ||= User.gen_session_token
  end
end
