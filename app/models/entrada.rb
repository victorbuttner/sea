class Entrada < ApplicationRecord

	#validate :pagamentos

	belongs_to :supplier
	belongs_to :company, optional: true

	has_many :products , :inverse_of => :entrada
	has_many :pagamentos , :inverse_of => :entrada


	accepts_nested_attributes_for :pagamentos , reject_if: :all_blank, allow_destroy: true
	accepts_nested_attributes_for :products , reject_if: :all_blank, allow_destroy: true


	before_validation :set_product_supplier
	before_save :update_total



	private

	def set_product_supplier
		products.each do |product|
			product.supplier_id = self[:supplier_id] 
		end
	end

	def total 
	   	products.collect { |oi| oi.valid? ? (oi.amount * oi.buy_price) : 0 }.sum


	end

	def update_total
		self[:valor] = total
	end



end
