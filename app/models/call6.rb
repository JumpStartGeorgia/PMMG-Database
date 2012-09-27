class Call6 < ActiveRecord::Base
  attr_accessible :fname, :lname, :district_id, :precinct_id, 
                  :label_a, :label_b

  belongs_to :district
  belongs_to :precinct
  
  validates :district_id, :uniqueness => {:scope => :precinct_id}
  validates :fname, :lname, :precinct_id, :district_id, :presence => true

  def self.times_true(label)
    return self.where(label => true).length
  end

end
