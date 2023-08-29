class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :wedding_accesses, #dependent: : destroy
  validates :first_name, :last_name, :email, :password, :gender, presence: true
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :wedding_accesses
  has_many :weddings, through: :wedding_accesses
end
