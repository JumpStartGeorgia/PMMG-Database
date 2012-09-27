class Call3 < ActiveRecord::Base

  validates :dname, :uniqueness => {:scope => :pname}
  validates :fname, :lname, :pname, :dname, :presence => true
  
  def self.add_values(label)
    h = self.select(label)
    a = h.collect(&label)
    return a.inject{|sum, x| sum + x }
  end
  
end
