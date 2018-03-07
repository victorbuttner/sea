class Pagamento < ApplicationRecord
	belongs_to :entrada, optional: true
end
