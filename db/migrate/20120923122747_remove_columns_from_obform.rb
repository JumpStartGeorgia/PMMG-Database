class RemoveColumnsFromObform < ActiveRecord::Migration
  def up
    remove_column :obforms, :a_label
    remove_column :obforms, :b_label
    remove_column :obforms, :l_label
    remove_column :obforms, :m_label
    remove_column :obforms, :n_label
    remove_column :obforms, :p_label
    remove_column :obforms, :q_label
    remove_column :obforms, :r_label
    remove_column :obforms, :s_label
    remove_column :obforms, :t_label
    remove_column :obforms, :u_label
    remove_column :obforms, :z_label
    remove_column :obforms, :ab_label
    remove_column :obforms, :ac_label
    remove_column :obforms, :ad_label
    remove_column :obforms, :af_label
    remove_column :obforms, :ag_label
    remove_column :obforms, :ah_label
    remove_column :obforms, :ak_label
    remove_column :obforms, :al_label
    remove_column :obforms, :am_label
    remove_column :obforms, :an_label
    remove_column :obforms, :ap_label
    remove_column :obforms, :aq_label
    remove_column :obforms, :ar_label
    remove_column :obforms, :as_label
    remove_column :obforms, :at_label    
  end

  def down
    add_column :obforms, :a_label
    add_column :obforms, :b_label
    add_column :obforms, :l_label
    add_column :obforms, :m_label
    add_column :obforms, :n_label
    add_column :obforms, :p_label
    add_column :obforms, :q_label
    add_column :obforms, :r_label
    add_column :obforms, :s_label
    add_column :obforms, :t_label
    add_column :obforms, :u_label
    add_column :obforms, :z_label
    add_column :obforms, :ab_label
    add_column :obforms, :ac_label
    add_column :obforms, :ad_label
    add_column :obforms, :af_label
    add_column :obforms, :ag_label
    add_column :obforms, :ah_label
    add_column :obforms, :ak_label
    add_column :obforms, :al_label
    add_column :obforms, :am_label
    add_column :obforms, :an_label
    add_column :obforms, :ap_label
    add_column :obforms, :aq_label
    add_column :obforms, :ar_label
    add_column :obforms, :as_label
    add_column :obforms, :at_label    
  end
end
