class Address < ApplicationRecord
    self.table_name = "addresses"
    belongs_to :people
end
