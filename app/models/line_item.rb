class LineItem < ActiveRecord::Base
  # line_item [product_id, cart_id, quantity, price]
  belongs_to :product
  belongs_to :cart

  def total_price
    product.price * quantity
  end

end
