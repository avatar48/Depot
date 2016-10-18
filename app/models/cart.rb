class Cart < ActiveRecord::Base
	has_many :line_items, dependent: :destroy
	def add_product(product_id_pered)
		current_item = line_items.find_by(product_id: product_id_pered)
		if current_item
			current_item.quantity += 1
		else
			current_item = line_items.build(product_id: product_id_pered)
		end
	current_item
	end
	def del_product(product_id_pered)
		current_item = line_items.find_by(product_id: product_id_pered)
		if current_item
			current_item.quantity -= 1
		else
			current_item = line_items.build(product_id: product_id_pered)
		end
	current_item
	end
	def total_price
		line_items.to_a.sum { |item| item.total_price}
	end
end
