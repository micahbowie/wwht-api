class User < ApplicationRecord
  has_secure_password
  has_many :lists

  validates :name, presence: true, length: { maximum: 25 }
  validates :email, presence: true, length: { maximum: 50 }
end
