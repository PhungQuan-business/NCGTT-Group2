class Supplier < ApplicationRecord
    has_many :products
    validates_numericality_of :phone
    validates_presence_of :name, :address, :phone, :email, :quantity
end
