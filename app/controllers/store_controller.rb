class StoreController < ApplicationController
  def index

    @count = increment_count

    @products = Product.order(:title)
    @cart = current_cart
    time = Time.now
    @time =time.to_formatted_s(:short)
  end

  def increment_count
    if session[:counter].nil?
      session[:counter] = 0
    end
    session[:counter] += 1
  end

end
