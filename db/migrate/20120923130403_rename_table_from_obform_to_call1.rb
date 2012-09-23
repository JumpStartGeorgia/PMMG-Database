class RenameTableFromObformToCall1 < ActiveRecord::Migration
  def up
    rename_table :obforms, :call1s
  end

  def down
    rename_table :call1s, :obforms
  end
end
