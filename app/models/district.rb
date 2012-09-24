class District < ActiveRecord::Base
  attr_accessible :id, :dname
  has_many :precincts
end
