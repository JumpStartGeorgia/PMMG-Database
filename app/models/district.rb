class District < ActiveRecord::Base
  attr_accessible :id, :dname
  
  has_many :precincts
  has_many :call1s
  has_many :call2s
  has_many :call3s
  has_many :call4s
  has_many :call5s
  has_many :call6s
end
