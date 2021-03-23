class ListDefinitionSerializer < ActiveModel::Serializer
  attributes :id, :list_id, :definition_id

  belongs_to :list
  belongs_to :definition
end
