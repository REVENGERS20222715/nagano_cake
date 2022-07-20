class Item < ApplicationRecord

    has_one_attached :image
    belongs_to :genres
    # has_many :customers, through: :cart_items, dependent: :destroy, source: :customer
    has_many :cart_items, dependent: :destroy
    has_many :order_details
    
    validates :name, presence: true
    validates :introduction, presence: true
    validates :is_active, presence: true
    validates :price, presence: true
    validates :genre_id, presence: true
end
