class StoreController < ApplicationController
    skip_before_action :authorize
   include CurrentCart 
   before_action :set_cart
  def increment_count
    session[:counter] ||= 0
    session[:counter] += 1
  end
  def index
  	@count = increment_count
  	@products = Product.order(popularity: :desc, title: :asc)
  	flash[:notice] = "You've visited this page #{@count} times without purchasing anything...Come on!" if @count >5
  end
end
