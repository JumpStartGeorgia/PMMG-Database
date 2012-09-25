class RemovepnameFromcall1s < ActiveRecord::Migration
  def up
    remove_column :call1s, :pname
  end

  def down
    add_column :call1s, :pname, :string
  end
end
