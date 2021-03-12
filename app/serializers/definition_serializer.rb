class DefinitionSerializer < ActiveModel::Serializer
  attributes :id, :what, :why, :how

  belongs_to :term
end
