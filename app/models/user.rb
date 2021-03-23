class User < ApplicationRecord
  has_secure_password
  has_many :lists

  validates :first_name, presence: true, length: { maximum: 25 }
  validates :last_name, presence: true, length: { maximum: 25 }
  validates :email, presence: true, length: { maximum: 50 }

  default_scope { order('id ASC') }
end
