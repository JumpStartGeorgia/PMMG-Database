class Call4 < ActiveRecord::Base

  validates :dname, :uniqueness => {:scope => :pname}

end
