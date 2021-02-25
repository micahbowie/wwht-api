class Term < ApplicationRecord
  has_many:list_terms
  has_many :lists, through: :list_terms

  def self.search(search_term)
   if search_term
     where(["name LIKE ?", "%#{search_term}%"])
   else
     all
   end
 end

end
