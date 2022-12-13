class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :appoints, through: :registres
  has_many :registres
  has_many :services, through: :registres



  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true
  validates :civility, presence: true
  validates :phone, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end

  def admin?
    role == 'admin'
  end

  def user?
    role == 'user'
  end
end
