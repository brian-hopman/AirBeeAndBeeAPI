class Vendor < ApplicationRecord
  has_many :transactions
  has_many :products
end
