class Customer < ActiveRecord::Base
  has_many :orders
  has_many :users, :through => :orders

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

  validates :name,
            presence: true,
            length: { maximum: 50 }
  validates :otch,
            presence: true,
            length: { maximum: 50 }
  validates :surname,
            presence: true,
            length: { maximum: 50 }
  validates :gender,
            presence: true
  validates :age,
            presence: true,
            numericality: { only_integer: true }
  validates :phone_number,
            presence: true
  validates :email,
            presence: true,
            format: { with: VALID_EMAIL_REGEX }
  validates :passport_series,
            presence: true,
            length: { is: 4 },
            numericality: { only_integer: true }
  validates :passport_number,
            presence: true,
            length: { is: 6 },
            numericality: { only_integer: true }
  validates :driver_series,
            presence: true,
            length: { is: 4 }
  validates :driver_number,
            presence: true,
            length: { is: 6 },
            numericality: { only_integer: true }
  validates :year_get,
            presence: true,
            length: { is: 4 },
            numericality: { only_integer: true }
end
