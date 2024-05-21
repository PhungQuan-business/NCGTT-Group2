class Booklist < ApplicationRecord
  belongs_to :type
  validates_presence_of :tilte, :author, :publisher
  validates_uniqueness_of :tilte
  def self.search(term)
    if term
      where('tilte LIKE ?', "%#{term}%")
    else
      all
    end
    end
    
end
