class Precinct < ActiveRecord::Base
  attr_accessible :district_id, :pname
  
  validates :district_id, :pname, :presence=>true
  
  belongs_to :district
  has_many :call1s
  has_many :call2s
  has_many :call3s
  has_many :call4s
  has_many :call5s
  has_many :call6s
  
  # number of items per page for pagination
	self.per_page = 20
	
  def self.missing_call(objname)
   call = objname.select("precinct_id")
#   call = call.delete_if { |k,v| v.nil?}
   return self.where("id not in (?)", call.collect(&:precinct_id))
  end
  
  def self.times_true(call, label)
    return call.where(label => true).size
  end
  
  
  
end
