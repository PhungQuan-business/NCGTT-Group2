class Type < ApplicationRecord
    has_many :booklists
    validates_presence_of :name
end
