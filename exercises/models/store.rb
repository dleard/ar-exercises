class Store < ActiveRecord::Base
  has_many :employees
  validates_length_of :name, minimum: 3
  validates_presence_of :annual_revenue
  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0}

  validate :must_carry_one_type
 
  def must_carry_one_type
    if mens_apparel == false && womens_apparel == false
      errors.add(:mens_apparel, "must carry one type of clothing")
      errors.add(:womens_apparel, "must carry one type of clothing")
    end
  end
end