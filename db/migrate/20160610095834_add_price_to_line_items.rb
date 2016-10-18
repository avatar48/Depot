class AddPriceToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :priceline, :decimal, precision: 8, scale: 2
  end
end
