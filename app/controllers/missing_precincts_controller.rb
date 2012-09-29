class MissingPrecinctsController < ApplicationController
  def call1
    @missing = Precinct.missing_call(Call1).paginate(:page => params[:page])
  end

  def call2
    @missing = Precinct.missing_call(Call2).paginate(:page => params[:page])
  end

  def call3
    @missing = Precinct.missing_call(Call3).paginate(:page => params[:page])
  end

  def call4
    @missing = Precinct.missing_call(Call4).paginate(:page => params[:page])
  end

  def call5
    @missing = Precinct.missing_call(Call5).paginate(:page => params[:page])
  end

  def call6
    @missing = Precinct.missing_call(Call6).paginate(:page => params[:page])
  end

end
