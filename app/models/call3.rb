class Call3 < ActiveRecord::Base

  validates :dname, :uniqueness => {:scope => :pname}
  
  def self.add_values(label)
    h = self.select(label)
    a = h.collect(&label)
    return a.inject{|sum, x| sum + x }
  end
  
end
