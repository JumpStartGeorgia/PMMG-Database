class Call1 < ActiveRecord::Base
 attr_accessible :fname, :lname, :dname, :pname, :c_label, :d_label, :e_label, :f_label, :g_label, :h_label, :k_label

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
