class Employee < ActiveRecord::Base
  belongs_to :store
  validates_presence_of :first_name, :last_name, :store_id
  validates :hourly_rate, :inclusion => {:in => 40..200}

  after_create :generate_password
  private
    def generate_password
      self.password = [*('a'..'z'),*('0'..'9')].shuffle[0,8].join
      self.save
    end  
end