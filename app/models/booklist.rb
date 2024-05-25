class Booklist < ApplicationRecord
  belongs_to :type
  validates_presence_of :tilte, :author, :publisher
  validates_uniqueness_of :tilte
 
  def self.search(term)
    if term.present?
      where('tilte LIKE ? OR author LIKE ? OR publisher LIKE ?', "%#{term}%", "%#{term}%", "%#{term}%")
    else
      all
    end
  end
end