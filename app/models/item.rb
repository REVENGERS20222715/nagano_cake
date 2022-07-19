class Item < ApplicationRecord

    has_one_attached :image
    belongs_to :genres
    # has_many :customers, through: :cart_items, dependent: :destroy, source: :customer
    has_many :cart_items, dependent: :destroy
    has_many :order_details


end
