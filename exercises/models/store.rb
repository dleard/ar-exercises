class Store < ActiveRecord::Base
  has_many :employees
  validates_length_of :name, minimum: 3
  validates_presence_of :annual_revenue
  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0}

  validate :must_carry_one_type, on: :create
  before_destroy :check_store_employees?
 
  def must_carry_one_type
    puts :mens_apparel
    if (mens_apparel == false && womens_apparel == false) || (!mens_apparel.present? && !womens_apparel.present?)
      errors.add(:mens_apparel, "must carry at least one type of clothing")
      errors.add(:womens_apparel, "must carry at least one type of clothing")
    end
  end

  private
    def check_store_employees?
      puts "EMPLOYEES: #{employees.count}"
      unless employees.count == 0  
        errors.add(:base, "cannot destroy a store with employees")
        throw(:abort)
      end  
    end  
end