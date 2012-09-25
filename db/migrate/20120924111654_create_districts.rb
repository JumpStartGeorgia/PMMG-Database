class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.string :dname

      t.timestamps
    end
  end
end
