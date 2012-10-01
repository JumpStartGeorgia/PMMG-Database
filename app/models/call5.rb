class Call5 < ActiveRecord::Base
  attr_accessible :fname, :lname, :district_id, :precinct_id, 
                  :label_al, :label_am, :label_an, 
                  :label_ap, :label_aq, :label_ar, 
                  :label_as, :label_at

  belongs_to :district
  belongs_to :precinct

  validates :district_id, :uniqueness => {:scope => :precinct_id}
  validates :fname, :lname, :precinct_id, :district_id, :presence => true

  # number of items per page for pagination
	self.per_page = 20
	
  def self.times_true(label)
    return self.where(label => true).length
  end

end
