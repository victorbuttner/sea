class Order < ApplicationRecord

	belongs_to :user, optional: true
	belongs_to :client, optional: true
	belongs_to :order_status
	has_many :payments  , :inverse_of => :order
	has_many :order_items

	#before_create :set_order_status
	before_validation(on: :create) do
   		set_initial_status
   		
  	end

	before_save :update_subtotal  , :set_order_status
	after_save	:update_total 
	#before_save :update_total
	#after_save :update_products

	accepts_nested_attributes_for :payments , reject_if: :all_blank, allow_destroy: true

	def subtotal
    	order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum

  	end

  	def total
  		subtotal - self.payments.sum(:price) 
  	end

	private

	  def update_products
      		self.order_items.product.amount -  self.order_items

      end

	  def set_user
	  	self.user_id = current_user.id

	  end

	  def set_initial_status
	    self.order_status_id = 1
	  end

	  def set_order_status
	  	if self[:price_total] == 0
	  		self[:order_status_id] = 3
	  	elsif payments.exists?
	  		self[:order_status_id] = 2
	  	else
	  		self[:order_status_id] = 1
	  	end

	  end

	  def update_subtotal
	    self[:sub_total] = subtotal
	    
	  end

	  def update_total
	  	if self[:price_total] != total
	  		p "Atualizando total"
	  		self[:price_total] = total
	  		save	  	
	  	end
	  end


end

