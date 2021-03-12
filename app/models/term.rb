class Term < ApplicationRecord
  has_many :definitions
  has_many:list_terms
  has_many :lists, through: :list_terms

  validates :name, presence: true, length: { maximum: 25 }

  def self.search(search_term)
   if search_term
     where(["name LIKE ?", "%#{search_term}%"])
   else
     all
   end
 end

end
