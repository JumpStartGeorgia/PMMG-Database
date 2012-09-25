class CreatePrecincts < ActiveRecord::Migration
  def change
    create_table :precincts do |t|
      t.string :dname
      t.string :pname

      t.timestamps
    end
  end
end
