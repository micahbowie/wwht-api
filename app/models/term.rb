class Term < ApplicationRecord
  has_many:list_terms
  has_many :lists, through: :list_terms
end
