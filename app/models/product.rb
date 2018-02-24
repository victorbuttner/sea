class Product < ApplicationRecord


	belongs_to :supplier
	belongs_to :category
	has_many :order_items


end
