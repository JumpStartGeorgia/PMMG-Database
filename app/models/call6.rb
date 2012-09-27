class Call6 < ActiveRecord::Base
  attr_accessible :fname, :lname, :dname, :pname, :label_a, :label_b

  validates :dname, :uniqueness => {:scope => :pname}
  validates :fname, :lname, :pname, :dname, :presence => true

  def self.times_true(label)
    return self.where(label => true).length
  end

end
