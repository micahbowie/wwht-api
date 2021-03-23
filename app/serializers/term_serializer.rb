class TermSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :definitions
end
