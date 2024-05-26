class Borrow < ApplicationRecord
  belongs_to :booklist

  has_many :order
  validates_presence_of :name, :phone
  validates_numericality_of :phone
end
