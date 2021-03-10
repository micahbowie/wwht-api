class UserSerializer < ActiveModel::Serializer
  has_secure_password
  attributes :id, :name, :email

  has_many :lists
end
