class Transaction < ApplicationRecord
  belongs_to :product
  belongs_to :consumer
  belongs_to :vendor
end
