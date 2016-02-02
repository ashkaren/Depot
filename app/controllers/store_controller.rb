class StoreController < ApplicationController
  def increment_count
    session[:counter] ||= 0
    session[:counter] += 1
  end
  def index
  	@count = increment_count
  	@products = Product.order(:title)
  	@shown_message = "You've visited this page #{@count} times without purchasing anything...Come on!" if @count >5
  end
end
