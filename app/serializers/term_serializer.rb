class TermSerializer < ActiveModel::Serializer
  attributes :id, :name, :why, :what, :how

  has_many:list_terms
  has_many :lists, through: :list_terms
end
