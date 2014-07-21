class Customer < ActiveRecord::Base
  has_many :orders
  has_many :users, :through => :orders

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

  validates :name, :otch, :surname,
            presence: true,
            length: { maximum: 50 }
  validates :gender, :phone_number,
            presence: true
  validates :age,
            presence: true,
            numericality: { only_integer: true }
  validates :email,
            presence: true,
            format: { with: VALID_EMAIL_REGEX }
  validates :passport_series, :year_get,
            presence: true,
            length: { is: 4 },
            numericality: { only_integer: true }
  validates :passport_number, :driver_number,
            presence: true,
            length: { is: 6 },
            numericality: { only_integer: true }
  validates :driver_series,
            presence: true,
            length: { is: 4 }

end
