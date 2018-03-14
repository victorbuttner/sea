class DashboardController < ApplicationController
  def index
  last_week = 	Date.today - 7.days
  today = Date.today
  @new_clients = Client.all.size
  @new_products = Product.all.size
  @new_payments = Payment.where({ created_at: (Time.now.midnight - 7.day)..Time.now }).size
  @orders = Order.where({ created_at: (Time.now.midnight - 7.day)..Time.now , user_id: current_user.id})


  end
end
