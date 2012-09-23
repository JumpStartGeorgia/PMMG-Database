class CreateObforms < ActiveRecord::Migration
  def change
    create_table :obforms do |t|
      t.string :fname
      t.string :lname
      t.string :dname
      t.integer :pname
      t.boolean :a_label
      t.boolean :b_label
      t.boolean :c_label
      t.integer :d_label
      t.integer :e_label
      t.integer :f_label
      t.boolean :g_label
      t.boolean :h_label
      t.string :k_label
      t.integer :l_label
      t.integer :m_label
      t.string :n_label
      t.string :p_label
      t.string :q_label
      t.string :r_label
      t.string :s_label
      t.string :t_label
      t.string :u_label
      t.string :z_label
      t.string :ab_label
      t.string :ac_label
      t.boolean :ad_label
      t.boolean :af_label
      t.boolean :ag_label
      t.boolean :ah_label
      t.string :ak_label
      t.boolean :al_label
      t.boolean :am_label
      t.boolean :an_label
      t.boolean :ap_label
      t.boolean :aq_label
      t.boolean :ar_label
      t.boolean :as_label
      t.boolean :at_label

      t.timestamps
    end
  end
end
