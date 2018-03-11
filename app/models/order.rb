class Order < ApplicationRecord

	belongs_to :user, optional: true
	belongs_to :client, optional: true
	belongs_to :order_status
	has_many :payments  , :inverse_of => :order
	has_many :order_items

	#before_create :set_order_status
	before_validation(on: :create) do
   		set_order_status
   		
  	end

	before_save :update_subtotal  #, :update_total 
	before_save :update_total
	accepts_nested_attributes_for :payments , reject_if: :all_blank, allow_destroy: true

	def subtotal
    	order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum

  	end

  	def total
  		subtotal - self.payments.sum(:price) 
  	end

	private

	  def set_user
	  	self.user_id = current_user.id

	  end

	  def set_order_status
	    self.order_status_id = 1
	  end

	  def update_subtotal
	    self[:sub_total] = subtotal
	    
	  end

	  def update_total
	  	self[:price_total] = total
	  end


end

