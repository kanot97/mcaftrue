class Service < ApplicationRecord
  has_many :users
  has_many :registres
  has_many :services, through: :registres
  validates :name, presence: true
  validates :description, presence: true
  validates :time, presence: true
  validates :price, presence: true
end
