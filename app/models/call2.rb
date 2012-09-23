class Call2 < ActiveRecord::Base

  validates :dname, :uniqueness => {:scope => :pname}
  
end
