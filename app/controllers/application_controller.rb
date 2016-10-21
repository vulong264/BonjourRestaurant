class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_order
  def current_order
#    @current_order = Order.last
#    unless @current_order
#      @current_order = Order.create! name: "Guess", address: "unknown"
#    end
#    @current_order
    @current_order = Order.last_open || Order.create!(name: "Guess", address: "unknown")
  end
end
