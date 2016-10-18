class StoreController < ApplicationController
	skip_before_action :authorize
	include CurrentCart
	include ActionView::Helpers::TextHelper
before_action :set_cart
  def index
#order сортирует порядок продуктов по полю title
  	@products = Product.order(:title)
  	@time = Time.now

  end
end
