class Order < ApplicationRecord
	has_many :line_items, dependent: :destroy
	enum pay_type: {
		"Check"				=> 0,
		"Credit card"		=> 1,
		"Purchase order"	=> 2
	}
	validates :name, :address, :email, presence: true
	validates :pay_type, inclusion: pay_types.keys

	def add_line_items_from_cart(cart)
		cart.line_items.each do |item|
			item.cart_id = nil
			line_items << item
		end
	end

	def tes
	 puts	"test"
	end

	def total_bayar
		harga = 0
		total	= 0
		check = LineItem.last
		ls = LineItem.where("order_id = #{check.order_id}")
		ls.each do |l|
			sr = Product.where("id = #{l.product_id}")
			sr.each do |pp|
				harga = pp.price * l.quantity
				total += harga
				end
			end
			total
		end
end

