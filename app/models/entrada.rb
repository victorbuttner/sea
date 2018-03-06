class Entrada < ApplicationRecord
	has_many :products , :inverse_of => :entrada
	belongs_to :supplier
	belongs_to :company, optional: true

	has_many :pagamentos , :inverse_of => :entrada

	accepts_nested_attributes_for :pagamentos , reject_if: :all_blank, allow_destroy: true
	accepts_nested_attributes_for :products , reject_if: :all_blank








end
