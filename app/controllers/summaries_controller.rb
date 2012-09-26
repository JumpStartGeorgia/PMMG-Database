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
    @missing = Precinct.missing_call(Call4)
  end

  def call5
    @total_precincts = Precinct.all
    @precincts = Call5.all
    @missing = Precinct.missing_call(Call5)
  end

  def call6
    @total_precincts = Precinct.all
    @precincts = Call6.all
    @missing = Precinct.missing_call(Call6)
  end

end
