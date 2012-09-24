class Precinct < ActiveRecord::Base
  attr_accessible :district_id, :pname
  belongs_to :district
end
