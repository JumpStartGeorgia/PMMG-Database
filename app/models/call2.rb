class Call2 < ActiveRecord::Base
  attr_accessible :fname, :lname, :dname, :pname, :label_l

  validates :dname, :uniqueness => {:scope => :pname}
  
  def self.add_values(label)
    h = self.select(label)
    a = h.collect(&label)
    return a.inject{|sum, x| sum + x }
  end
  
end
