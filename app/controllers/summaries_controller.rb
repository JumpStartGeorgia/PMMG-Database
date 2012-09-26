class SummariesController < ApplicationController
  before_filter :authenticate_user!
  def call1
    @total_precincts = Precinct.all
    @precincts = Call1.all
    @missing = Precinct.missing_call(Call1).paginate(:page => params[:page])
    @on_time = Precinct.times_true(Call1, :c_label)
    @voters_general = Call1.add_values(:d_label)
    @voters_special = Call1.add_values(:e_label)
    @voters_mobile = Call1.add_values(:f_label)
    @e_materials = Call1.times_true(:g_label)
    @confide = Call1.times_true(:h_label)
    @legal_one = Call1.times_option(:k_label, 1)
    @legal_two = Call1.times_option(:k_label, 2)
    @legal_three = Call1.times_option(:k_label, 3)
  end

  def call2
    @total_precincts = Precinct.all
    @precincts = Call2.all
    @missing = Precinct.missing_call(Call2).paginate(:page => params[:page])
    @signatures = Call2.add_values(:label_l)
  end

  def call3
    @total_precincts = Precinct.all
    @precincts = Call3.all
    @missing = Precinct.missing_call(Call3).paginate(:page => params[:page])
    @signatures = Call3.add_values(:label_m)
  end

  def call4
    @total_precincts = Precinct.all
    @precincts = Call4.all
    @missing = Precinct.missing_call(Call4).paginate(:page => params[:page])
    @req_docs_one = Call4.times_option(:label_n, 1)
    @req_docs_two = Call4.times_option(:label_n, 2)
    @req_docs_three = Call4.times_option(:label_n, 3)
    @req_docs_four = Call4.times_option(:label_n, 4)
    @no_id_proh_one = Call4.times_option(:label_p, 1)
    @no_id_proh_two = Call4.times_option(:label_p, 2)
    @no_id_proh_three = Call4.times_option(:label_p, 3)
    @no_id_proh_four = Call4.times_option(:label_p, 4)
    @vot_sig_list_one = Call4.times_option(:label_q, 1)
    @vot_sig_list_two = Call4.times_option(:label_q, 2)
    @vot_sig_list_three = Call4.times_option(:label_q, 3)
    @vot_sig_list_four = Call4.times_option(:label_q, 4)
    @vot_help_one = Call4.times_option(:label_r, 1)
    @vot_help_two = Call4.times_option(:label_r, 2)
    @vot_help_three = Call4.times_option(:label_r, 3)
    @vot_help_four = Call4.times_option(:label_r, 4)
    @checked4mark_one = Call4.times_option(:label_s, 1)
    @checked4mark_two = Call4.times_option(:label_s, 2)
    @checked4mark_three = Call4.times_option(:label_s, 3)
    @checked4mark_four = Call4.times_option(:label_s, 4)
    @mark_applied_one = Call4.times_option(:label_t, 1)
    @mark_applied_two = Call4.times_option(:label_t, 2)
    @mark_applied_three = Call4.times_option(:label_t, 3)
    @mark_applied_four = Call4.times_option(:label_t, 4)
    @booth_people_one = Call4.times_option(:label_u, 1)
    @booth_people_two = Call4.times_option(:label_u, 2)
    @booth_people_three = Call4.times_option(:label_u, 3)
    @booth_people_four = Call4.times_option(:label_u, 4)
    @dirty_ballot_one = Call4.times_option(:label_z, 1)
    @dirty_ballot_two = Call4.times_option(:label_z, 2)
    @dirty_ballot_three = Call4.times_option(:label_z, 3)
    @dirty_ballot_four = Call4.times_option(:label_z, 4)
    @ballnhand_one = Call4.times_option(:label_ab, 1)
    @ballnhand_two = Call4.times_option(:label_ab, 2)
    @ballnhand_three = Call4.times_option(:label_ab, 3)
    @ballnhand_four = Call4.times_option(:label_ab, 4)
    @influence_one = Call4.times_option(:label_ac, 1)
    @influence_two = Call4.times_option(:label_ac, 2)
    @influence_three = Call4.times_option(:label_ac, 3)
    @influence_four = Call4.times_option(:label_ac, 4)
    @inf_pol_party_one = Call4.times_true(:label_ad)
    @inf_sec_serv_one = Call4.times_true(:label_af)
    @inf_obs_one = Call4.times_true(:label_ag)
    @inf_com_lead_one = Call4.times_true(:label_ah)
    @unreg_flow_one = Call4.times_option(:label_ak, 1)
    @unreg_flow_two = Call4.times_option(:label_ak, 2)
    @unreg_flow_three = Call4.times_option(:label_ak, 3)
  end

  def call5
    @total_precincts = Precinct.all
    @precincts = Call5.all
    @missing = Precinct.missing_call(Call5).paginate(:page => params[:page])
    @in_lin_vote_one = Call5.times_true(:label_al)
    @after8vote_one = Call5.times_true(:label_am)
    @unauth_close_one = Call5.times_true(:label_an)
    @elcomm_abide_one = Call5.times_true(:label_ap)
    @inf_ball_count_one = Call5.times_true(:label_aq)
    @chair_announce_one = Call5.times_true(:label_ar)
    @data_n_proto_one = Call5.times_true(:label_as)
    @cp_proto_stamp = Call5.times_true(:label_at)
  end

  def call6
    @total_precincts = Precinct.all
    @precincts = Call6.all
    @missing = Precinct.missing_call(Call6).paginate(:page => params[:page])
    @restrictions = Call6.times_true(:label_a)
  end

end
