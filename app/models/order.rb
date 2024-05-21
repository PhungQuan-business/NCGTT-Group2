class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :product
  belongs_to :paymentmethod
  validates_presence_of :orderid, :customer, :product, :orderdate, :paymentmethod
  validates_uniqueness_of :orderid
  validates_numericality_of :orderid
end
