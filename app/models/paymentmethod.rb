class Paymentmethod < ApplicationRecord
    has_many :order
    validates_presence_of :method
end
