class Call4 < ActiveRecord::Base
  attr_accessible :fname, :lname, :dname, :pname, :label_n, 
                  :label_p, :label_q, :label_r, :label_s, :label_t,
                  :label_u, :label_z, :label_ab, :label_ac, :label_ad,  
                  :label_af, :label_ag, :label_ah, :label_ak  
    
  validates :dname, :uniqueness => {:scope => :pname}
  validates :fname, :lname, :pname, :dname, :presence => true

  def self.add_values(label)
    h = self.select(label)
    a = h.collect(&label)
    return a.inject{|sum, x| sum + x }
  end
  
  def self.times_true(label)
    return self.where(label => true).length
  end

  def self.times_option(label, option)
    return self.where(label => option).length
  end
end
