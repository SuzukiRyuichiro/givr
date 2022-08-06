class User < ApplicationRecord
  has_many :items
  has_many :pickups_as_owner, through: :items, source: :pickups

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
