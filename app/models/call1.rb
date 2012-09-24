class Call1 < ActiveRecord::Base
  
  validates :dname, :uniqueness => {:scope => :pname}

end
