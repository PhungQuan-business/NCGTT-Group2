class Supplier < ApplicationRecord
    has_many :booklists
    validates_numericality_of :phone
    validates_presence_of :name, :address, :phone, :email
end
