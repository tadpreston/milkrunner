# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  price       :decimal(8, 2)
#  quantity    :string(255)
#  status      :string(255)      default("active")
#  created_at  :datetime
#  updated_at  :datetime
#

class Product < ActiveRecord::Base
  validates :name, presence: true
  validates :price, presence: true

  STATUSES = [ACTIVE_STATUS = 'active', INACTIVE_STATUS = 'inactive']
  QUANTITIES = [GALLON_QUANTITY = 'gallon', QUART_QUANTITY = 'quart', PINT_QUANTITY = 'pint', DOZEN_QUANTITY = 'dozen']

end
