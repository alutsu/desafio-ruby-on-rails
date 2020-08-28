class Store < ApplicationRecord
  validates :name, :owner, presence: true
end
