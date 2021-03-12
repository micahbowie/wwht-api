class DefinitionSerializer < ActiveModel::Serializer
  attributes :id, :what, :why, :how, :up_vote

  belongs_to :term
end
