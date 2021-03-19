class TermSerializer < ActiveModel::Serializer
  attributes :id, :name
  
  has_many :definitions
  has_many:list_terms
  has_many :lists, through: :list_terms
end
