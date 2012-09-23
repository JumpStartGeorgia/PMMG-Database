class CreateCall6s < ActiveRecord::Migration
  def change
    create_table :call6s do |t|
      t.string :fname
      t.string :lname
      t.string :dname
      t.integer :pname
      t.boolean :label_a
      t.boolean :label_b

      t.timestamps
    end
  end
end
