class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :customer

  validate :date_get_is_valid_datetime

  validates :number_people,
            presence: true,
            numericality: { only_integer: true }

  def date_get_is_valid_datetime
    errors.add(:date_get, 'must be a valid datetime') if ((DateTime.parse(date_get) rescue ArgumentError) == ArgumentError)
  end
end
