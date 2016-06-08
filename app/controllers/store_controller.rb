class StoreController < ApplicationController
	include CurrentStore
	include ActionView::Helpers::TextHelper
	incr = 0
  def index
#order сортирует порядок продуктов по полю title
  	@products = Product.order(:title)
  	@time = Time.now
  	@inc = pluralize(set_store, 'query')

  end
end
