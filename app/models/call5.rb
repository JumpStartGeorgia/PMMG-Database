class Call5 < ActiveRecord::Base

  validates :dname, :uniqueness => {:scope => :pname}

end
