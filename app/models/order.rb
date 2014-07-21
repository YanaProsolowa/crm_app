class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :customer
  belongs_to :status
  belongs_to :auto
end
