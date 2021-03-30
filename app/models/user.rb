class User < ApplicationRecord
  has_secure_password
  has_many :lists

  validates :first_name, presence: true, length: { maximum: 25 }
  validates :last_name, presence: true, length: { maximum: 25 }
  validates :email, presence: true, length: { maximum: 50 }

  default_scope { order('id ASC') }

  def serialize
    {
      id: id,
      first_name: first_name,
      last_name: last_name,
      username: username,
      twitter: twitter,
      email: email,
    }
  end

end
