class Product < ApplicationRecord
  has_many :transactions
  belongs_to :vendor
  belongs_to :consumer
end
