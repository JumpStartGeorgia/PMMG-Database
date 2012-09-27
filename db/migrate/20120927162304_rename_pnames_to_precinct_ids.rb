class RenamePnamesToPrecinctIds < ActiveRecord::Migration
  def up
    rename_column :call1s, :pname, :precinct_id
    rename_column :call2s, :pname, :precinct_id
    rename_column :call3s, :pname, :precinct_id
    rename_column :call4s, :pname, :precinct_id
    rename_column :call5s, :pname, :precinct_id
    rename_column :call6s, :pname, :precinct_id
  end
  

  def down
    rename_column :call1s, :pname, :precinct_id
    rename_column :call2s, :pname, :precinct_id
    rename_column :call3s, :pname, :precinct_id
    rename_column :call4s, :pname, :precinct_id
    rename_column :call5s, :pname, :precinct_id
    rename_column :call6s, :pname, :precinct_id
  end
end
