class CreateCall2s < ActiveRecord::Migration
  def change
    create_table :call2s do |t|
      t.string :fname
      t.string :lname
      t.string :dname
      t.integer :pname
      t.integer :label_l

      t.timestamps
    end
  end
end
