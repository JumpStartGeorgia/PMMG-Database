class CreateCall4s < ActiveRecord::Migration
  def change
    create_table :call4s do |t|
      t.string :fname
      t.string :lname
      t.string :dname
      t.integer :pname
      t.string :label_n
      t.string :label_p
      t.string :label_q
      t.string :label_r
      t.string :label_s
      t.string :label_t
      t.string :label_u
      t.string :label_z
      t.string :label_ab
      t.string :label_ac
      t.boolean :label_ad
      t.boolean :label_af
      t.boolean :label_ag
      t.boolean :label_ah
      t.string :label_ak

      t.timestamps
    end
  end
end
