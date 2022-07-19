class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :addresses
  # has_many :items, through: :cart_items, dependent: :destroy, source: :item
  has_many :cart_items, dependent: :destroy
  has_many :orders


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
