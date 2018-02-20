module RupiahHelper
	include ActionView::Helpers::NumberHelper

  	def to_rupiah(fill)
    	number_to_currency( fill, precision: 2, unit: "Rp. " )
	end

end
