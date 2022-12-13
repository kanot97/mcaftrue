class Appoint < ApplicationRecord
  has_many :registres
  has_many :users, through: :registres

  validates :title, presence: true
  validates :description, presence: true
  validates :horaire, presence: true
end
