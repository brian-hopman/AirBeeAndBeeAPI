class Consumer < ApplicationRecord
  has_many :products
  has_many :transactions
end
