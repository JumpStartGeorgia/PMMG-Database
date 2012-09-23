class CreateCall3s < ActiveRecord::Migration
  def change
    create_table :call3s do |t|
      t.string :fname
      t.string :lname
      t.string :dname
      t.integer :pname
      t.integer :label_m

      t.timestamps
    end
  end
end
