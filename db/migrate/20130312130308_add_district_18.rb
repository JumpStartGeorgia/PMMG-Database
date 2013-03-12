# encoding: UTF-8
class AddDistrict18 < ActiveRecord::Migration
  def up
    District.create(:id => 18, :dname => 'ახმეტა')
  end

  def down
    District.find(18).delete
  end
end
