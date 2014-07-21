class Auto < ActiveRecord::Base
  belongs_to :region
  belongs_to :model
  has_many :orders
end
