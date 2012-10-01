class Call1 < ActiveRecord::Base
  attr_accessible :fname, :lname, :district_id, :precinct_id, 
                  :c_label, :d_label, :e_label, 
                  :f_label, :g_label, :h_label, :k_label

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
