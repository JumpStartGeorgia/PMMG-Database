class Call3 < ActiveRecord::Base

  validates :dname, :uniqueness => {:scope => :pname}
  
end
