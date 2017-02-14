class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true,
  greater_than: 0
  }
  validate :apparelVal
  def apparelVal
    unless mens_apparel || womens_apparel
      errors.add(:women_apparel, "can't be greater than total value")
    end
  end
end
