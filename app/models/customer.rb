class Customer < ApplicationRecord
    has_many :order
    validates_presence_of :name, :customerid, :phone, :email, :address
    validates_uniqueness_of :customerid
    validates_numericality_of :customerid, :phone
end
