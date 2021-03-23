class DefinitionSerializer < ActiveModel::Serializer
  attributes :id, :what, :why, :how, :up_vote, :one_liner

  has_many :list_definitions
  has_many :lists, through: :list_definitions
  belongs_to :term
end
