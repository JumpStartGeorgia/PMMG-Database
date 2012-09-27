class Call5 < ActiveRecord::Base
  attr_accessible :fname, :lname, :dname, :pname, :label_al, :label_am, :label_an, 
               :label_ap, :label_aq, :label_ar, :label_as, :label_at

  validates :dname, :uniqueness => {:scope => :pname}
  validates :fname, :lname, :pname, :dname, :presence => true

  def self.times_true(label)
    return self.where(label => true).length
  end

end
