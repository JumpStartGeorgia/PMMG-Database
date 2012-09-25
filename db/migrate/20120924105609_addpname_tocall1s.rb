class AddpnameTocall1s < ActiveRecord::Migration
  def up
    add_column :call1s, :pname, :string
  end

  def down
    remove_column :call1s, :pname
  end
end
