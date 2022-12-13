class Registre < ApplicationRecord
  belongs_to :user
  belongs_to :appoint
  belongs_to :service
  validates :user_id, presence: true
  validates :appoint_id, presence: true
  validates :service_id, presence: true
end
