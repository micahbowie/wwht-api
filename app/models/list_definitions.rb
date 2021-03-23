class ListDefinition < ApplicationRecord
  belongs_to :list
  belongs_to :definition

  validates :list_id, presence: true
  validates :definition_id, presence: true
end
