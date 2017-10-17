class Child < ApplicationRecord
    # keyword "has_many" defines relationship
    has_many :toys
    validates_presence_of :name
end
