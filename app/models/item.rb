class Item < ActiveRecord::Base
	has_many :items_orders
	has_many :orders, through: :items_orders
end
