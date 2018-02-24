class Order < ApplicationRecord

	#belongs_to :client
	belongs_to :order_status
	#has_many :payments
	has_many :order_items

	#before_create :set_order_status
	before_validation(on: :create) do
   		set_order_status
  	end

	before_save :update_subtotal

	def subtotal
    	order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
  	end

	private
	  def set_order_status
	    self.order_status_id = 1
	  end

	  def update_subtotal
	    self[:sub_total] = subtotal
	  end


end

