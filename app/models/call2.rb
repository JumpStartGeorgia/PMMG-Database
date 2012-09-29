class Call2 < ActiveRecord::Base
  attr_accessible :fname, :lname, :district_id, :precinct_id, :label_l

  belongs_to :district
  belongs_to :precinct

  validates :district_id, :uniqueness => {:scope => :precinct_id}
  validates :fname, :lname, :precinct_id, :district_id, :presence => true
  
  # number of items per page for pagination
	self.per_page = 20
  
  def self.add_values(label)
    h = self.select(label)
    a = h.collect(&label)
    return a.inject{|sum, x| sum + x }
  end
  
end
