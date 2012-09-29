class Call4sController < ApplicationController
  before_filter :authenticate_user!
  # GET /call4s
  # GET /call4s.json
  def index
    @call4s = Call4.all.paginate(:page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @call4s }
    end
  end

  # GET /call4s/1
  # GET /call4s/1.json
  def show
    @call4 = Call4.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @call4 }
    end
  end

  # GET /call4s/new
  # GET /call4s/new.json
  def new
    @call4 = Call4.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @call4 }
    end
  end

  # GET /call4s/1/edit
  def edit
    @call4 = Call4.find(params[:id])
  end

  # POST /call4s
  # POST /call4s.json
  def create
    @call4 = Call4.new(params[:call4])

    respond_to do |format|
      if @call4.save
        format.html { redirect_to @call4, notice: 'Call4 was successfully created.' }
        format.json { render json: @call4, status: :created, location: @call4 }
      else
        format.html { render action: "new" }
        format.json { render json: @call4.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /call4s/1
  # PUT /call4s/1.json
  def update
    @call4 = Call4.find(params[:id])

    respond_to do |format|
      if @call4.update_attributes(params[:call4])
        format.html { redirect_to @call4, notice: 'Call4 was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @call4.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /call4s/1
  # DELETE /call4s/1.json
  def destroy
    @call4 = Call4.find(params[:id])
    @call4.destroy

    respond_to do |format|
      format.html { redirect_to call4s_url }
      format.json { head :ok }
    end
  end
end
