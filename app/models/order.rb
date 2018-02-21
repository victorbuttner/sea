class Order < ApplicationRecord

	belongs_to :client
	has_many :payments
	has_many :order_items
end
