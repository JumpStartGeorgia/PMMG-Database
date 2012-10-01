class Call5sController < ApplicationController
  before_filter :authenticate_user!
  # GET /call5s
  # GET /call5s.json
  def index
    @call5s = Call5.all.paginate(:page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @call5s }
    end
  end

  # GET /call5s/1
  # GET /call5s/1.json
  def show
    @call5 = Call5.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @call5 }
    end
  end

  # GET /call5s/new
  # GET /call5s/new.json
  def new
    @call5 = Call5.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @call5 }
    end
  end

  # GET /call5s/1/edit
  def edit
    @call5 = Call5.find(params[:id])
  end

  # POST /call5s
  # POST /call5s.json
  def create
    @call5 = Call5.new(params[:call5])

    respond_to do |format|
      if @call5.save
        format.html { redirect_to @call5, notice: 'Call5 was successfully created.' }
        format.json { render json: @call5, status: :created, location: @call5 }
      else
        format.html { render action: "new" }
        format.json { render json: @call5.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /call5s/1
  # PUT /call5s/1.json
  def update
    @call5 = Call5.find(params[:id])

    respond_to do |format|
      if @call5.update_attributes(params[:call5])
        format.html { redirect_to @call5, notice: 'Call5 was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @call5.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /call5s/1
  # DELETE /call5s/1.json
  def destroy
    @call5 = Call5.find(params[:id])
    @call5.destroy

    respond_to do |format|
      format.html { redirect_to call5s_url }
      format.json { head :ok }
    end
  end
end
