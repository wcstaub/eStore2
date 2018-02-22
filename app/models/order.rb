class Order < ApplicationRecord
	has_many :line_items
	belongs_to :user, optional: true
	# we created the order_items as a text type, make it a hash
	serialize :order_items, Hash
end
