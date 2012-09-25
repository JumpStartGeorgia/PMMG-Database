class Addcolumntoprecincts < ActiveRecord::Migration
  def up
    add_column :precincts, :district_id, :integer
  end

  def down
    remove_column :precincts, :district_id
  end
end
