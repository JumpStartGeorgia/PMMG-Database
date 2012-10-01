class Call4 < ActiveRecord::Base
  attr_accessible :fname, :lname, :district_id, :precinct_id, :label_n, 
                  :label_p, :label_q, :label_r, :label_s, :label_t,
                  :label_u, :label_z, :label_ab, :label_ac, :label_ad,  
                  :label_af, :label_ag, :label_ah, :label_ak  
  
  belongs_to :district
  belongs_to :precinct
  
  validates :district_id, :uniqueness => {:scope => :precinct_id}
  validates :fname, :lname, :precinct_id, :district_id, :presence => true

  # number of items per page for pagination
	self.per_page = 20
  
  def self.add_values(label)
    h = self.select(label)
    h = h.delete_if { |k,v| v.nil?}
    a = h.collect(&label)
    if a && !a.empty? 
      return a.inject{|sum, x| sum + x }
    end
    return ''  
  end
  
  def self.times_true(label)
    return self.where(label => true).length
  end

  def self.times_option(label, option)
    return self.where(label => option).length
  end
end
