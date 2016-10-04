class User < ApplicationRecord
  rolify
  has_many :posts
  has_many :comments
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true
  validates :phone_number, format: { with: /\d{3}-\d{3}-\d{4}/, message: "bad format, expected format ***-***-****" }
  validates :email_id, email_format: { message: "doesn't look like an email address" }
end
