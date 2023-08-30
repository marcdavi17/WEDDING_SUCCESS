class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :email, :password, presence: true
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :wedding_accesses, dependent: :destroy
  has_many :weddings, through: :wedding_accesses
end
