class CreateCall5s < ActiveRecord::Migration
  def change
    create_table :call5s do |t|
      t.string :fname
      t.string :lname
      t.string :dname
      t.integer :pname
      t.boolean :label_al
      t.boolean :label_am
      t.boolean :label_an
      t.boolean :label_ap
      t.boolean :label_aq
      t.boolean :label_ar
      t.boolean :label_as
      t.boolean :label_at

      t.timestamps
    end
  end
end
