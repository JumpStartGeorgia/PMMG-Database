class ExportController < ApplicationController
  def all
    @call1 = Call1.all
    @call2 = Call2.all
    @call3 = Call3.all
    @call4 = Call4.all
    @call5 = Call5.all
    @call6 = Call6.all
    respond_to do |format|
      format.xls
    end 
  end
  
  def missing
    @call1 = Precinct.missing_call(Call1)
    @call2 = Precinct.missing_call(Call2)
    @call3 = Precinct.missing_call(Call3)
    @call4 = Precinct.missing_call(Call4)
    @call5 = Precinct.missing_call(Call5)
    @call6 = Precinct.missing_call(Call6)
    respond_to do |format|
      format.xls
    end 
  end

end
