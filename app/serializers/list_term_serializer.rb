class ListTermSerializer < ActiveModel::Serializer
  belongs_to :list
  belongs_to :term
  
  attributes :id, :term_id, :list_id
end
