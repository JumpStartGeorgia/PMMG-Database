class RenameDnameinCall1ToDistrictid < ActiveRecord::Migration
  def up
    rename_column :call1s, :dname, :district_id
    rename_column :call2s, :dname, :district_id
    rename_column :call3s, :dname, :district_id
    rename_column :call4s, :dname, :district_id
    rename_column :call5s, :dname, :district_id
    rename_column :call6s, :dname, :district_id
  end

  def down
    rename_column :call1s, :district_id, :dname
    rename_column :call2s, :district_id, :dname
    rename_column :call3s, :district_id, :dname
    rename_column :call4s, :district_id, :dname
    rename_column :call5s, :district_id, :dname
    rename_column :call6s, :district_id, :dname
  end
end
